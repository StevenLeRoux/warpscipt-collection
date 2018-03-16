# PREDICTLINEAR

> [linear regression forecast prediction]

Use a linear regression to predict upcoming values

## Getting started / Usage

To get started with PREDICTLINEAR, the easiest way is to go on Quantum and follow the following instructions.

Definitions :
 
 - forecast: Prediction window from tick
 - observation: Linear regression window from tick
 - tick: Timestamp from which we observe of predict (default is NOW)
 - limit: Don't forecast above the given limit. Format is <mapper>_<value> (e.g  gt_0.0 lt_1000000)

```warpscript

'PREDICTLINEAR' FIMPORT

NOW 'now' STORE

[ 'rToken' 'os.mem' { 'host' '42.domain.tld' } $now 2 h ] FETCH
[ SWAP bucketizer.last $now 1 m 0 ] BUCKETIZE

{
        'forecast'    20 m             // optional, default: 20 m
        'observation' 10 m             // optional, default: 20 m
        'tick'        $now             // optional, default: NOW
        'limit'       'lt_32000000000' // optional, default: null
        'bucketspan'  5 m              // optional, default: 5 m
}

@PREDICTLINEAR

```

**Here you should say what actually happens when you execute the code above.**

## Features

What's all the bells and whistles the PREDICTLINEAR can perform?

* What's the main functionality
* You can also do another thing
* If you get really randy, you can even do this

## Contributing

If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome.

## Licensing

The code in this project is licensed under MIT license.
