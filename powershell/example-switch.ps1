param($myvar = 0)
$yourvar = get-date

switch ($myvar) {
    0 {
        "myvar had a zero in it"
        continue
        }
    32 {
        "myvar had a 32 in it"
        continue
        }
    "rad" {
        "myvar was like, totally rad"
        continue
        }
    $yourvar {
        "Cool! myvar had the same guts as yourvar!"
        continue
        }
    { ($myvar -is [datetime]) -and ($_.dayofweek -lt $yourvar.dayofweek) } {
        "Rats. myvar's dayofweek was less than yourvar's. You win."
        continue
        }
    default {
        "I dunno about you, but myvar had something in it I didn't expect and it freaked me out"
        continue
        }
}
