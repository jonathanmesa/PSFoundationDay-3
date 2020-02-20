#Export operating system data to csv:
Get-WmiObject win32_operatingsystem | Export-Csv -Path c:\temp\osinfo.csv

#View the data and note the object type is added in first row. This can be omitted by using the "notypeinformation" parameter if the csv is used outside of powershell
C:\temp\osinfo.csv
Get-WmiObject win32_operatingsystem | Export-Csv -Path c:\temp\osinfo.csv -NoTypeInformation

#Import the data again into a variable:
$importeddata = import-csv -Path C:\temp\osinfo.csv
$importeddata

#Not every machine has the same delimiter setup in the region settings of a PC. You can use "culture" or "delimiter" parameters to control this:
Get-WmiObject win32_operatingsystem | Export-Csv -Path c:\temp\osinfo.csv -NoTypeInformation -UseCulture
Get-WmiObject win32_operatingsystem | Export-Csv -Path c:\temp\osinfo.csv -NoTypeInformation -Delimiter "?"


#Exporting multi dimentional arrays or special advanced classes wont work in CSV format as the data gets lost in serialization. Look at "RequiredServices" and "DependentServices".
#The data is lost on import:
Get-Service | Export-Csv -Path c:\temp\services.csv
Import-Csv -Path c:\temp\services.csv

#We can use export-clixml to correctly serialize the data and also specify the depth of the serialization:
Get-Service | Export-Clixml -Path c:\temp\services.xml -Depth 1
c:\temp\services.xml
import-Clixml -Path c:\temp\services.xml 