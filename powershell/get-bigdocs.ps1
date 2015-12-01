param ([String]$bigdocspath=".", [long]$minsize="0")
function Get-Docs ([string]$docspath=".") {
  Get-ChildItem -Path $docspath -Include *.txt,*.doc,*.docx,*.pdf,*.xls,*.ppt -Recurse -ErrorAction SilentlyContinue
}

Get-Docs -Path $bigdocspath |
  Where-Object { $_.length -ge $minsize } |
  Select-Object FullName, LastAccessTime, Length |
  Sort-Object -Descending Length |
  Out-GridView
}
