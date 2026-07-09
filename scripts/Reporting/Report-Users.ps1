# Report-Users.ps1
# Exports Active Directory users to a CSV report

$ReportPath = "C:\AD-User-Report.csv"

Get-ADUser -Filter * -Properties Department,Enabled |
Select-Object Name,SamAccountName,Department,Enabled |
Export-Csv $ReportPath -NoTypeInformation

Write-Host ""
Write-Host "AD user report created successfully:" -ForegroundColor Green
Write-Host $ReportPath