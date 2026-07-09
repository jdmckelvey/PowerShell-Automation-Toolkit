# Unlock-Account.ps1
# Unlocks an Active Directory user account

$Username = Read-Host "Enter username to unlock"

try {
    Unlock-ADAccount -Identity $Username -ErrorAction Stop

    Get-ADUser $Username -Properties LockedOut,Enabled |
    Select-Object Name,SamAccountName,Enabled,LockedOut

    Write-Host ""
    Write-Host "Account unlocked successfully!" -ForegroundColor Green
}
catch {
    Write-Host ""
    Write-Host "Unable to unlock account. Verify the username or check if the account is actually locked." -ForegroundColor Red
}