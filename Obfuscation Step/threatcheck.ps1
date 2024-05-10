param 
(
[Parameter(Mandatory=$true)] [String]$path,
[Parameter(Mandatory=$true)] [String]$projectName 
)

Write-Output "[+] Executing Threat Check"
C:\Tools\ThreatCheck\ThreatCheck\bin\Release\ThreatCheck.exe -n "$path\$projectName.exe"
