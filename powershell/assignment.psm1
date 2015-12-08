function start-countdown {
    param ( [parameter(Mandatory=$true)][int]$StartingNumber,
            [int]$EndingNumber=0,
            [int]$DelayInSeconds=1 )
    # try it with a pipeline
    $StartingNumber..$EndingNumber| ForEach-Object {$_; if($_ -gt $EndingNumber){sleep 1} }
    #try it with a switch
    switch ($StartingNumber..$EndingNumber) {
        $EndingNumber {$_; break }
        default {$_ ; sleep 1}
    }
    # try it with an expanded loop
    $nums=$StartingNumber..$EndingNumber
    foreach ($num in $nums) {
        $num
        if ($num -ne $EndingNumber) {
            sleep $DelayInSeconds
        }
    }
}

function get-tempfilename ([string]$Folder = "C:\TEMP") {
    $fileName = [string]$Myinvocation.mycommand +
                "-" +
                [string](get-random -Minimum 100000 -Maximum 999999)
    "$folder\$fileName"
}