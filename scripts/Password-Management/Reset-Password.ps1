# Reset-Password.ps1

$Username = Read-Host "Enter username"
$NewPassword = Read-Host "Enter temporary password"

$SecurePassword = ConvertTo-SecureString $NewPassword -AsPlainText -Force

Set-ADAccountPassword -Identity $Username -NewPassword $SecurePassword -Reset
Set-ADUser -Identity $Username -ChangePasswordAtLogon $true

Get-ADUser $Username -Properties PasswordLastSet |
Select Name,SamAccountName,PasswordLastSet