# Bulk-NewEmployees.ps1
# Creates multiple AD users from a CSV file

$Users = Import-Csv ".\CSV\NewEmployees.csv"
$Password = ConvertTo-SecureString "Welcome123!" -AsPlainText -Force

foreach ($User in $Users) {

    $OUPath = "OU=$($User.Department),DC=lab,DC=local"

    New-ADUser `
    -Name "$($User.FirstName) $($User.LastName)" `
    -GivenName $User.FirstName `
    -Surname $User.LastName `
    -SamAccountName $User.Username `
    -UserPrincipalName "$($User.Username)@lab.local" `
    -Path $OUPath `
    -AccountPassword $Password `
    -Enabled $true `
    -ChangePasswordAtLogon $true

    Add-ADGroupMember -Identity $User.Group -Members $User.Username

    Write-Host "$($User.Username) created and added to $($User.Group)" -ForegroundColor Green
}