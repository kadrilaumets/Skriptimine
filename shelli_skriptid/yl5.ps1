# kadri laumets
#its 24

[System.net.Dns]::GetHostName()
echo "`t****************************"
(Get-WMIObject win32_operatingsystem) | Select Name
echo "`t****************************"
(Invoke-WebRequest -uri "https://api.ipify.org/").Content 
Get-NetAdapter -Name *
echo "`t****************************"
Get-CimInstance -ClassName win32_physicalmemory | Format-Table Capacity
echo "`t****************************"
Get-CimInstance -ClassName win32_processor | Format-Table name
echo "`t****************************"
Get-CimInstance -ClassName win32_videocontroller | Format-Table name
echo "`t****************************"
Get-LocalUser | Format-Table name



