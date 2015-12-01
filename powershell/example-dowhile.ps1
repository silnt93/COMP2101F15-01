do {
    $response = read-host -prompt "Are you Annoyed yet [y/N]?"
    if ( $response -eq "y" ) {
        $annoyed = $true
    }
    else {
        $annoyed = $false
    }
} while ($annoyed -eq $false)
