param ([string]$from = "CAD", [string]$to )

$URI = "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL"
$proxy = New-WebServiceProxy -Uri $URI
$rate = $proxy.conversionrate($from, $to)
$rate

trap [System.SystemException] { $_.exception ; continue }
