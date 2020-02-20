Get-ChildItem -Path C:\Windows\ -File | Format-Table | Sort-Object -Property name
Get-ChildItem -Path C:\Windows\ -File | ft | Group-Object -Property name