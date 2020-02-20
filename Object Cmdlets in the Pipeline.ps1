#Use sort-object to sort the last write time of files:
Get-ChildItem -Path c:\windows -file | Sort-Object -Property LastWriteTime

Viewing Unique event types using sort-object sort them ascending or descending:
Get-EventLog -LogName Application -Newest 500 | Sort-Object -Property EntryType -Unique
Get-EventLog -LogName Application -Newest 500 | Sort-Object -Property EntryType -Unique -Descending


#As unique only shows single object group object can be used to display a group of all types. The information will remain in the output object.
Get-EventLog -LogName Application -Newest 500 | Group-Object -Property entrytype

#View the information of a grouped object:
$group = Get-EventLog -LogName Application -Newest 500 | Group-Object -Property entrytype
$group[1].group

#Using Measure-object to measure lines, words and characters of a file:
Get-Content -path C:\windows\system.ini | Measure-Object -Line -Word -Character

#Using measure-object to work with file count and file sizes in byte :
get-childitem -path C:\windows\System32 -file |  Measure-Object
get-childitem -path C:\windows\System32 -file |  Measure-Object -Property length -Sum 
get-childitem -path C:\windows\System32 -file |  Measure-Object -Property length -Sum -Maximum -Minimum -Average

#Using measure-object to measure free space from WMI:
Get-WMIObject win32_LogicalDisk | Measure-Object -Property freespace -Sum

#Using compare-object to view the difference in folders. Note Compare-object only takes pipeline input on the “referenceobject” parameter!!
$programfiles = Get-ChildItem -Path 'C:\Program Files\'
Get-ChildItem -Path 'C:\Program Files (x86)\' | Compare-Object -ReferenceObject $programfiles -Property name