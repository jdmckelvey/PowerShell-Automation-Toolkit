# Move-Employee.ps1
# Moves a user to a selected OU

$Username = Read-Host "Enter username"
$TargetOU = Read-Host "Enter target OU name"

Move-ADObject `
-Identity (Get-ADUser $Username).DistinguishedName `
-TargetPath "OU=$TargetOU,DC=lab,DC=local"

Get-ADUser $Username |
Select-Object Name,SamAccountName,DistinguishedName