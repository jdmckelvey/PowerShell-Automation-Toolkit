# Script Catalog

This document explains each script in the PowerShell Automation Toolkit.

## AdminToolkit.ps1
Menu-driven console that launches the other administration scripts.

## New-Employee.ps1
Creates a new Active Directory user, enables the account, requires password change at next logon, and adds the user to a security group.

## Reset-Password.ps1
Prompts for a username and temporary password, resets the password, and requires the user to change it at next logon.

## Unlock-Account.ps1
Unlocks an Active Directory account and displays the account status.

## Disable-Employee.ps1
Disables a user account and moves the account to the Disabled Users OU.

## Enable-Employee.ps1
Enables a disabled Active Directory user account.

## Move-Employee.ps1
Moves a user to a selected Organizational Unit.

## Add-UserToGroup.ps1
Adds a user to an Active Directory security group and displays the group membership.

## Remove-UserFromGroup.ps1
Removes a user from an Active Directory security group and displays the updated membership.

## Bulk-NewEmployees.ps1
Imports user data from `csv/NewEmployees.csv`, creates multiple AD users, and assigns group membership.

## Bulk-DisableUsers.ps1
Imports usernames from `csv/DisableUsers.csv`, disables each account, and moves the accounts to the Disabled Users OU.

## LockedOutUsers.ps1
Lists locked Active Directory user accounts.

## DisabledUsers.ps1
Lists disabled Active Directory user accounts.

## Report-Users.ps1
Exports Active Directory user details to a CSV report.
