#Use get-service to display the out-gridview. Show you can sort, add filters and scroll:
get-service | Out-GridView

#By using "passthru" parameter anything that is selected will now be returned. You can chain them together. (Select multiple items every time)
get-service | Out-GridView -PassThru
get-service | Out-GridView -PassThru | Sort-Object -Property name | Out-GridView -PassThru | Group-Object -Property status 

#Suppressing output can be done sending it to out-null, although assigning it to a variable or explicit declare the output as void class is faster:
"this is silence text"
"this is silence text" | out-null

get-service | Out-GridView | out-null