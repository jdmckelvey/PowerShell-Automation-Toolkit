# AdminToolkit.ps1
# Active Directory PowerShell Administration Toolkit

do {
    Clear-Host

    Write-Host "========================================="
    Write-Host " Active Directory Administration Toolkit "
    Write-Host "========================================="
    Write-Host "1. New Employee"
    Write-Host "2. Disable Employee"
    Write-Host "3. Enable Employee"
    Write-Host "4. Move Employee"
    Write-Host "5. Unlock Account"
    Write-Host "6. Reset Password"
    Write-Host "7. Add User to Group"
    Write-Host "8. Remove User from Group"
    Write-Host "9. Report Users"
    Write-Host "10. Locked Out Users"
    Write-Host "11. Disabled Users"
    Write-Host "12. Bulk New Employees"
    Write-Host "13. Bulk Disable Users"
    Write-Host "14. Exit"
    Write-Host ""

    $Choice = Read-Host "Choose an option"

    switch ($Choice) {
        "1"  { .\New-Employee.ps1 }
        "2"  { .\Disable-Employee.ps1 }
        "3"  { .\Enable-Employee.ps1 }
        "4"  { .\Move-Employee.ps1 }
        "5"  { .\Unlock-Account.ps1 }
        "6"  { .\Reset-Password.ps1 }
        "7"  { .\Add-UserToGroup.ps1 }
        "8"  { .\Remove-UserFromGroup.ps1 }
        "9"  { .\Report-Users.ps1 }
        "10" { .\LockedOutUsers.ps1 }
        "11" { .\DisabledUsers.ps1 }
        "12" { .\Bulk-NewEmployees.ps1 }
        "13" { .\Bulk-DisableUsers.ps1 }
        "14" { Write-Host "Exiting toolkit..." }
        default { Write-Host "Invalid selection. Try again." }
    }

    if ($Choice -ne "14") {
        Write-Host ""
        Pause
    }

} while ($Choice -ne "14")