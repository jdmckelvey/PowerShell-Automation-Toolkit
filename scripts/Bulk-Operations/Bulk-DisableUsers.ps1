############################################################
# Bulk-DisableUsers.ps1
# Active Directory PowerShell Automation Toolkit
# Author: Joseph Mckelvey
#
# Description:
# Reads a CSV file containing usernames, disables each
# Active Directory account, and moves each user into the
# Disabled Users Organizational Unit.
############################################################

$Users = Import-Csv ".\CSV\DisableUsers.csv"

foreach ($User in $Users) {

    Disable-ADAccount -Identity $User.Username

    Move-ADObject `
        -Identity (Get-ADUser $User.Username).DistinguishedName `
        -TargetPath "OU=Disabled Users,DC=lab,DC=local"

    Write-Host "Disabled user: $($User.Username) and moved to Disabled Users OU." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Bulk disable operation completed successfully." -ForegroundColor Cyan