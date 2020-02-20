$files = Get-ChildItem C:\Windows -File
$files.name -like "*.exe“
$fine.name –notlike “*.exe”

(get-service).name -like "W*" 

Match –
"192.176.42.5" -match "176" #    -> Match 176 as numbers
"192.176.42.5" -match "\d"   #  -> Match digits

Contains:
"1","2","3","4","5" -contains "two"
"1","2","3","4","5" -contains 0
“apple”,$true,”pear” -contains “true”
(get-service) -contains "WSearch"
(get-service).name -notcontains "WSearch" 