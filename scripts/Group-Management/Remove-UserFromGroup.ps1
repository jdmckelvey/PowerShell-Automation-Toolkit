# Remove-UserFromGroup.ps1
# Removes a user from an Active Directory security group

$Username = Read-Host "Enter username"
$Group = Read-Host "Enter group name"

Remove-ADGroupMember -Identity $Group -Members $Username -Confirm:$false

Write-Host ""
Write-Host "$Username has been removed from $Group." -ForegroundColor Green

Get-ADGroupMember $Group |
Select-Object Name,SamAccountName