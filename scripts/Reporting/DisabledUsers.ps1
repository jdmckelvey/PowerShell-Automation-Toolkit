# DisabledUsers.ps1
# Lists disabled Active Directory user accounts

Search-ADAccount -AccountDisabled -UsersOnly |
Select-Object Name,SamAccountName,DistinguishedName