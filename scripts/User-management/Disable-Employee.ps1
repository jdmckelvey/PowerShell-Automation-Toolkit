# Disable-Employee.ps1
# Disables a user account and moves it to Disabled Users OU

$Username = Read-Host "Enter username to disable"

Disable-ADAccount -Identity $Username

Move-ADObject `
-Identity (Get-ADUser $Username).DistinguishedName `
-TargetPath "OU=Disabled Users,DC=lab,DC=local"

Get-ADUser $Username -Properties Enabled |
Select Name,SamAccountName,Enabled,DistinguishedName