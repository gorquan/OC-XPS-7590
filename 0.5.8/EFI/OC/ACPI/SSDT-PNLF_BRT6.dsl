// Make brightness control and brightness keys work
// PreRequire:
// 
// Patch: Rename GFX0.BRT6 to BRTX 
// Find: IEJSVDY=
// Replace: IEJSVFg=
// References:
// [1] https://github.com/daliansky/OC-little/blob/master/05-%E6%B3%A8%E5%85%A5%E8%AE%BE%E5%A4%87/05-2-PNLF%E6%B3%A8%E5%85%A5%E6%96%B9%E6%B3%95/README.md
// [2] https://github.com/daliansky/OC-little/blob/master/19-%E5%93%81%E7%89%8C%E6%9C%BA%E5%99%A8%E7%89%B9%E6%AE%8A%E8%A1%A5%E4%B8%81/19-1-Dell%E6%9C%BA%E5%99%A8%E7%89%B9%E6%AE%8A%E8%A1%A5%E4%B8%81/README.md
// [3] https://github.com/daliansky/OC-little/blob/master/14-%E4%BA%AE%E5%BA%A6%E5%BF%AB%E6%8D%B7%E9%94%AE/README.md

DefinitionBlock ("", "SSDT", 2, "hack", "BCKM", 0x00000000)
{
    External (_SB_.ACOS, IntObj)
    External (_SB_.ACSE, IntObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.BRTX, MethodObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    
    // inject PNLF for Skylake to make brightness control work[1]
    Scope (_SB)
    {
        Device (PNLF)
        {
            Name (_ADR, Zero)
            Name (_HID, EisaId ("APP0002"))
            Name (_CID, "backlight")
            // _UID is set depending on PWMMax to match profiles in AppleBacklightFixup.kext Info.plist
            // 14: Sandy/Ivy 0x710
            // 15: Haswell/Broadwell 0xad9
            // 16: Skylake/KabyLake 0x56c (and some Haswell, example 0xa2e0008)
            // 17: custom LMAX=0x7a1
            // 18: custom LMAX=0x1499
            // 19: CoffeeLake 0xffff
            // 99: Other (requires custom AppleBacklightInjector.kext/AppleBackightFixup.kext)
            Name (_UID, 19)  // Use CoffeeLake ID 
            Name(_STA, 0x0B)
        }
    }
    
    // make BRT6 to be called on Darwin[2]
    // call chain: _Q66 -> NEVT -> SMIE -> SMEE -> EV5 -> BRT6
    // in SMEE, EV5 is called only when OSID >= 0x20, and OSID:
    //     if ACOS == 0: init ACOS based on OS version
    //     return ACOS
    // hence set ACOS >= 0x20 can do the trick, and this trick affects less methods than _OSI renaming patch
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            // simulate Windows 2013(Win81)
            \_SB.ACOS = 0x80
            \_SB.ACSE = 0x02
        }
    }

    // Only For Intel Graphics
    Scope (\_SB.PCI0.GFX0) 
    {
        // BRT6 Method Swizzling AKA Hook Method[3]
        // Since BRT6 has been renamed to BRTX, every call of BRT6 redirected to following method
        Method (BRT6, 2, NotSerialized)
        {    
            // For macOS, notify PS2K when brightness control key was pressed[2]
            If (_OSI ("Darwin"))
            {
                If ((Arg0 == One)) 
                {
                    Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
                }
                If ((Arg0 & 0x02))
                {
                    Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
                }
            }
            // For otherOS , BRTX will be called which is origin method
            Else
            {
                BRTX (Arg0, Arg1)
            }
        }
    }
}

