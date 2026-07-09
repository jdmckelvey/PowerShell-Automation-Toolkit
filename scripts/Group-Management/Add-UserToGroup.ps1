# Add-UserToGroup.ps1
# Adds a user to an Active Directory security group

$Username = Read-Host "Enter username"
$Group = Read-Host "Enter group name"

Add-ADGroupMember -Identity $Group -Members $Username

Write-Host ""
Write-Host "$Username has been added to $Group." -ForegroundColor Green

Get-ADGroupMember $Group |
Select-Object Name,SamAccountName