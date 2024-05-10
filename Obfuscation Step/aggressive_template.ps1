param 
(
[Parameter(Mandatory=$true)] [String]$path, 
[Parameter(Mandatory=$true)] [String]$projectName 
)

$template = @"
<project baseDir="$path" outputDir="$path" xmlns="http://confuser.codeplex.com">
    <rule pattern="true" preset="aggressive" inherit="false">
        <protection id="anti debug" />
        <protection id="anti dump" />
        <protection id="anti ildasm" />
        <protection id="anti tamper" />
        <protection id="constants" />
        <protection id="ctrl flow" />
        <protection id="invalid metadata" />
        <protection id="resources" />
    </rule>
    <packer id="compressor" />
    <module path="$projectName.exe" />
</project>
"@

Write-Output "[+] Using ConfuserEx with $PSCommandPath"

$template | Out-File -FilePath "$path\$projectName.crproj"
C:\Tools\ConfuserEx\Confuser.CLI.exe -n "$path\$projectName.crproj"