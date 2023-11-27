<#
This PowerShell script will attempt to change the BIOS password from OldPassword to NewPassword.
The old password must be existed.
Possible return codes for the SetBIOSSetting method.

0 – Success.
1 – Not Supported.
2 – Unspecified Error.
3 – Timeout.
4 – Failed (Usually caused by a typo in the setting value).
5 – Invalid Parameter.
6 – Access Denied (Usually caused by an incorrect BIOS password
#>


$Interface = Get-WmiObject -Namespace root/hp/InstrumentedBIOS -Class HP_BIOSSettingInterface
$Interface.SetBIOSSetting("Setup Password","<utf-16/>" + "NewPassword","<utf-16/>" + "OldPassword")
