# New-Employee.ps1
# Creates a new Active Directory user and adds them to IT-Admins

$Password = ConvertTo-SecureString "Welcome123!" -AsPlainText -Force

New-ADUser `
-Name "Emily Carter" `
-GivenName "Emily" `
-Surname "Carter" `
-SamAccountName "ecarter" `
-UserPrincipalName "ecarter@lab.local" `
-Path "OU=IT,DC=lab,DC=local" `
-AccountPassword $Password `
-Enabled $true `
-ChangePasswordAtLogon $true

Add-ADGroupMember -Identity "IT-Admins" -Members ecarter

Get-ADUser ecarter -Properties Enabled |
Select-Object Name,SamAccountName,Enabled