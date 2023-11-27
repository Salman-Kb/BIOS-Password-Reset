<#
This PowerShell script will return a number that inform if the BIOS password set or not:
0 – No password set.
1 – Password set.
#>

$HPBiosSettings = Get-WmiObject -Namespace root/hp/InstrumentedBIOS -Class HP_BIOSSetting
($HPBiosSettings | Where-Object Name -eq "Setup Password").IsSet

