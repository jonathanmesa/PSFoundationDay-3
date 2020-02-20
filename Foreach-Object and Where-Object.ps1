#Using foreach-object is required if the second pipe element does not contain a command
get-service -Name *app* | $_.displayname
get-service -Name *app* | foreach-object {$_.displayname}

#Foreach-object actual uses the parameter -process
get-service -Name *app* | foreach-object -process {$_.displayname}

#Filtering with Where object. Note it only check if the result is True or False. Any non NULL value is true
Get-Service | Where-Object Status -eq running 

#Practical sample with where-object
Get-ChildItem -path c:\windows -filter *.ini |`
Format-Table -property name, length 

#Simplified syntax
get-process | Where-Object id -lt 1000
Get-LocalUser | Where-Object lastlogon

#Compound conditions break when using simplified syntax
Get-ChildItem | Where-Object Length -gt 100 -and name -eq "Temp" 