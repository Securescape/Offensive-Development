rule HackTool_MSIL_SHARPLIGOLO_1
{
    meta:
        description = "The TypeLibGUID present in a .NET binary maps directly to the ProjectGuid found in the '.csproj' file of a .NET project. This rule looks for .NET PE files that contain the ProjectGuid found in the public SharpLigolo project."
        rev = 1
        author = "Lavender-exe"
    strings:
        $typelibguid1 = "F5F21E2D-EB7E-4146-A7E1-371FD08D6762" ascii nocase wide
    condition:
        $typelibguid1
}