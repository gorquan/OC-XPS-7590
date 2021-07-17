// Enable TPD0 GPIO pinning
// Patch: Rename USTP to One 
// Find: VVNUUBA=
// Replace: AaOjoxA=
// References:
// [1] https://github.com/xxxzc/xps15-9550-macos/issues/26#issuecomment-546838295
// [2] https://github.com/daliansky/OC-little/tree/master/09-OCI2C-TPXX%E8%A1%A5%E4%B8%81%E6%96%B9%E6%B3%95
// [3] https://github.com/alexandred/VoodooI2C/blob/master/Documentation/GPIO%20Pinning.md

DefinitionBlock ("", "SSDT", 2, "hack", "TPDX", 0x00000000)
{
    External (TPDM, FieldUnitObj)
    External (TPLT, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
//            TPLT = Zero // disable touchscreen
            TPDM = Zero // enable GPIO pinning for TPD0
        }
    }
}