<%
  <'
    DEFAULT

    Get Key/Value from map, return the key as a variable containing the value or the default value if Key was not in the map.

    See on the forge https://forge.ovh/packages/DEFAULT

	Example :

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

    The code in this project is licensed under MIT license.
  '>

  DOC // The previous multiline string is declared as the macro documentation

    '_default' STORE
    '_key' STORE
    '_map' STORE
    $_map $_key CONTAINSKEY <% true == %> <% $_key GET $_key TOSTRING STORE %> <% $_default %> IFTE

%>
