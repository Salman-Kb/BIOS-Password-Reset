<#
This PowerShell script will return a number that inform what is the type of password that currently set:
0 – No passwords set.
1 – Power on password set.
2 – Supervisor password set.
3 – Power on and supervisor passwords set.
4 – Hard drive password(s) set.
5 – Power on and hard drive passwords set.
6 – Supervisor and hard drive passwords set.
7 – Supervisor, power on, and hard drive passwords set.
64 – System management password set.
65 – System management and power on passwords set.
66 – System management and supervisor passwords set.
67 – System management, supervisor, and power on passwords set.
68 – System management and hard drive passwords set.
69 – System management, power on, and hard drive passwords set.
70 – System management, supervisor, and hard drive passwords set.
71 – System management, supervisor, power on, and hard drive passwords set.
#>

$PasswordSettings = Get-WmiObject -Namespace root\wmi -Class Lenovo_BiosPasswordSettings
$PasswordSettings.PasswordState
