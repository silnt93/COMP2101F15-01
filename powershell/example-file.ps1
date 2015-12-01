# start out in the doghouse
$unforgiven = 100

# this function will randomly give us 1 chance in 10 of being forgiven
function buy-flowers {
    param ([int]$mychances = 10) # default 1 in 10 chance to be forgiven
    $randomnumber = get-random ; "randomnumber was $randomnumber" |out-host # get a random number to work with
    $remainder = $randomnumber % $mychances ; "remainder was $remainder" |out-host # if the remainder is zero, then unforgiven will be false
    $remainder
} # end of function buy-flowers

# keep buying flowers until we get out of the doghouse (unforgiven turns false)
while ($unforgiven) {
    ":( - unforgiven is $unforgiven" # we are unforgiven, makes us sad
    $unforgiven = buy-flowers -mychances $unforgiven #try to get out of the doghouse
} # end of while($unforgiven)

":)"
