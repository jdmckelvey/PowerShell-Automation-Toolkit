# LockedOutUsers.ps1
# Lists all locked Active Directory user accounts

Search-ADAccount -LockedOut -UsersOnly |
Select-Object Name,SamAccountName,DistinguishedName