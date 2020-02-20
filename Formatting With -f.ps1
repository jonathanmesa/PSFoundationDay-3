"{0}" -f 1,2,3,4,5

"{0:C}" -f 200,99,765  #Currency format (for the current culture)

"{0:d4}" -f 200,99,765  #Decimal. leading zeroes are added to the beginning of the number if needed.


"{1:C}" -f 200,99,765  #Currency format (for the current culture)

"{0:p}" -f .703   #Percentage


"{0:hh}:{0:mm}" -f (Get-Date)  #Convert a DateTime to a 2 digit Hour/minute/second"{0:hh}:{0:mm}"


"{0:dddd}" -f (Get-Date)  #Convert a DateTime to Day of the Week


"{1,10} {0,10} {2,10:x}" -f "First", "Second", 255  #exidecimal value (x)