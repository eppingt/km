<#
The section of script changes the name of a newly built server.
#>

Get-WmiObject Win32_ComputerSystem
$computerName = Get-WmiObject Win32_ComputerSystem
$name = Read-Host -Prompt "Please Enter the ComputerName you want to use."
$computername.Rename($name)

<#
This section of script reboots the newly renamed server.
#>

Restart-Computer