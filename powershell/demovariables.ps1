  $i = 3
  "`$i is $i"
  "`$i + 5 is $($i+5)"
  "`$i - 5 is $($i-5)"
  "`$i * 5 is $($i*5)"
  "`$i / 5 is $($i/5)"
  "`$i % 2 is $($i%2)"

  $s1 = "string"
  $s2 = "string2"
  "Our strings are "
  $s1
  $s2
  "They can be concatenated using the + operator "
  $s1 + $s2

  $r = 1 .. 5
  "The third element of our range is ", $r[2]

  $c = 1, "red", 3, "green", 5, 94
  "Our collection contains "
  $c
  "The second element of our collection is ", $c[1]
  "The last element of our collection is ", $c[-1]

  $h = @{FirstItem=56;SecondItem="red";ThirdItem=68e-1;FourthItem=10..19}
  "Our hash contains "
  $h
  "The 1st, 3rd, and 5th elements of the FourthItem in our hash are "
  $h["FourthItem"][1,3,5]

  $h2 = [ordered]@{FirstItem=56;SecondItem="red";ThirdItem=68e-1;FourthItem=10..19}
  "An ordered version of our hash looks like this: "
  $h2

  $d = get-date
  "`$d contains a $($d.GetType()) object from the get-date cmdlet"
  $d = "12/25/2000"
  "`$d contains a $($d.GetType()) object from the command line assumption of string type data"
  $d = [datetime]"12/25/2000"
  "`$d contains a $($d.GetType()) object from the command line conversion of a string to a datetime"
  [datetime]$d = "12/25/2000"
  "`$d contains a $($d.GetType()) object from the variable-enforced conversion of a string to a datetime"
  "Trying to assign inavlid data to a variable with a strong type produces: "
  $d = "red"
