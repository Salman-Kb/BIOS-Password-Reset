<#
This This PowerShell script will attempt to change the supervisor password from OldPassword to NewPassword.
The type of password being modified is determined by the first value inside the double quotes, in this case pap, which is the supervisor password.

the values for the other password types:
*  pap – Supervisor password
*  pop – Power on password
*  smp – System management password
*  uhdp1 – User hard drive password 
*  mhdp1 – Master hard drive password
If the PowerShell script return success that mean BIOS password changed successfully. 
In Lenovo and for security reasons, If enough wrong password attempts are made, the system will lock and require a reboot to continue.
After change password over PowerShell script you need to restart PC
#>


$PasswordSet = Get-WmiObject -Namespace root\wmi -Class Lenovo_SetBiosPassword
$PasswordSet.SetBiosPassword("pap,OldPassword,NewPassword,ascii,us")
