$Processes = Get-Process
$timeSortedProcesses = $Processes | Sort-Object -Descending CPU | Select-Object -First 5
"
Top CPU users
=============", $timeSortedProcesses
