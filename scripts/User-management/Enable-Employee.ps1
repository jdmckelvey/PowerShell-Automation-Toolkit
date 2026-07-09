# Enable-Employee.ps1
# Enables a disabled Active Directory user account

$Username = Read-Host "Enter username to enable"

Enable-ADAccount -Identity $Username

Get-ADUser $Username -Properties Enabled |
Select-Object Name,SamAccountName,Enabled,DistinguishedName