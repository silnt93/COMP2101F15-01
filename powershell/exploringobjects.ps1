  $d = get-date
  $dtype = $d.GetType()
"
get-date produces an object of type $dtype
The $dtype type has the following properties:"
  $d | Get-Member -MemberType Property
"
The $dtype type has the following methods:
"
  $d | Get-Member -MemberType Method
"
An example of the values found in the properties of a ${dtype}:
"
  $d|format-list *
