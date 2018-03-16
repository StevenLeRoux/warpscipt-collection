'DEFAULT' FIMPORT // Import the macro from the forge

// Your macro's specifications here

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


