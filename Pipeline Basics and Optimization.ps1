#Viewing the advanced properties of all network adapters:
Get-NetAdapter | Get-NetAdapterAdvancedProperty

#View content of all INI files in the windows dir:
get-childitem -path C:\Windows -File -Filter *.ini | Get-Content

#Creating and removing 5 new local groups: (Run as admin)
1..5 | New-Localgroup
1..5 | ForEach-Object -process {Remove-LocalGroup -Name $_}

Creating 300 new local groups and adding administrators group as member: (Run as admin)
1..300 | New-Localgroup | ForEach-Object -process {Add-LocalGroupMember -Member administrators -Group $_}
Get-LocalGroupMember -Group 1
1..300 | ForEach-Object -process {Remove-LocalGroup -Name $_}


measure-command {
    foreach ( $number in 1..300)
    {
        New-Localgroup -Name $number
        Add-LocalGroupMember -Member administrators -Group $number
        Remove-LocalGroup -Name $number
    }
}   