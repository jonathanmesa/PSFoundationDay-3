#The default assignment operators:
$value = 10
$value
$value += 10
$value
$value -= 10
$value
$value *= 10
$value
$value /= 10
$value
$value %= 2
$value

#Multiple ways to assign +1 
$value++
++$value
$value += 1
$value = $value + 1 

#Unary pre and post processing:

$1 = 5
$1
write-output -InputObject (++$1) 
$1
write-output -InputObject ($1++) 
$1 