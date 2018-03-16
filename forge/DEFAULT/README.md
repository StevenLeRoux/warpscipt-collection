# DEFAULT

> [default]

Get Key/Value from map, return the key as a variable containing the value or the default value if Key was not in the map.

## Getting started / Usage

To get started with DEFAULT, the easiest way is to go on Quantum and follow the following instructions.

```warpscript
'DEFAULT' FIMPORT

{
        'param1' 20
        'param2' true
}

'param1' 30  @DEFAULT
'param2' true  @DEFAULT
'param3' false  @DEFAULT
'param4' 'a_string'  @DEFAULT

// then use variable :

$param1 10 +
$param2 $param3 &&
$param4 '_is_nice' +

```

**Here you should say what actually happens when you execute the code above.**

## Features

What's all the bells and whistles the DEFAULT can perform?

* What's the main functionality
* You can also do another thing
* If you get really randy, you can even do this

## Contributing

If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome.

## Licensing

The code in this project is licensed under MIT license.
