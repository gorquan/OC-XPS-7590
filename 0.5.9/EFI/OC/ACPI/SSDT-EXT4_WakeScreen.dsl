//
DefinitionBlock("", "SSDT", 2, "OCLT", "EXT4", 0)
{
    External(_SB.SB.LID0, DeviceObj)
    
    Method (EXT4, 1, NotSerialized)
    {   
        If (3 == Arg0)
        {
            //
            If (CondRefOf (\_SB.SB.LID0))
            {
                Notify (\_SB.SB.LID0, 0x80)
            }
        }
    }
}
//EOF