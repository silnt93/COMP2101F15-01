# Demo of doing something with each object coming through a pipeline
"red","green","blue" | foreach { "I got a $_" }

# petting the dog has a 25% chance of making it happy
function pet-dog {
    $randomnum = get-random
    ! ($randomnum % 4)
}

# feeding the dog has a 50% chance of making it happy
function feed-dog {
    $randomnum = get-random
    $randomnum % 2
}

$doghappy=$false
for ($counter=0; $doghappy -ne $true ; $counter++ ) {
    $doghappy = pet-dog
    if (! $doghappy ) { "Petting not good enough, eh? Have a treat you mangy cur." ; $doghappy = feed-dog }
}
if ($counter -ne 1) {"The dog was happy in $counter tries"} else {"The dog was happy in 1 try"}
