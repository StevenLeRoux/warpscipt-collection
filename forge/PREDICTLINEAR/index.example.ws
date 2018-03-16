'PREDICTLINEAR' FIMPORT // Import the macro from the forge

// Your macro's specifications here

NOW 'now' STORE

[ 'rToken' 'os.mem' { 'host' '42.domain.tld' } $now 2 h ] FETCH
[ SWAP bucketizer.last $now 1 m 0 ] BUCKETIZE

{
        'forecast' 20 m          // optional, default: 20 m
        'observation' 10 m       // optional, default: 20 m
        'tick'                   // optional, default: NOW
        'limit' 'lt_32000000000' // optional, default: null
        'bucketspan' 5 m         // optional, default: 5 m
}

@PREDICTLINEAR
