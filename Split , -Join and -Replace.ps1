# Using the unary split operator :
-split "1","2","on my shoe","3","4","on,the,3th,door"       #     -> only the first string gets split
-split "on,the,door"     #         -> wont work no spaces
-split "on my shoe"


#Using the binary split operator :
"1","2","on my shoe","3","4","on,the,3th,door" -split ","    
"1","2","on my shoe","3","4","on,the,3th,door" -split "\d"  #         --> Regex split on digits


#Using the unary join operator :
-join "1","2","on my shoe","3","4","on,the,3th,door"   #        -> Again only the first string 
-join ("1","2","on my shoe","3","4","on,the,3th,door")


#Using Replace operator:
"1","2","on my shoe","3","4","on,the,3th,door" -replace ","  # --> works on every object not specifying the replace with just removes the found match
"1","2","on my shoe","3","4","on,the,3th,door" -replace "\d","{this_was_a_digit}“  #       --> regex replace