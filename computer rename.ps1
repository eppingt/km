<#
The section of script changes the name of a newly built server.
#>

Get-WmiObject Win32_ComputerSystem
$computerName = Get-WmiObject Win32_ComputerSystem
$name = Read-Host -Prompt "Please Enter the ComputerName you want to use."
$computername.Rename($name)

<#
This Section of script prompts you to enter your current timezone
#>

[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic') | Out-Null 
$time = [Microsoft.VisualBasic.Interaction]::InputBox("Enter Desired Time Zone")
Set-TimeZone("$time")

<#
This section of script prompts you to enter the local time
#>

[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic') | Out-Null 
$date = [Microsoft.VisualBasic.Interaction]::InputBox("Enter Desired Time in MM/DD/YYYY HH:MM:SS AM/PM")
Set-Date("$date")


<#
This section of script reboots the server.
#>

Restart-Computer