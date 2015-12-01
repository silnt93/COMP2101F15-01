  $colours = "red", "blue", "green", "yellow", "orange", "red", "yellow", "pink"
  "Our unsorted collection of colours looks like this:"
  $colours
  "Sorting the list does this:"
  $colours|Sort-Object
  "Removing duplicates does this:"
  $colours|Sort-Object|Get-Unique
