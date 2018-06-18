<%
  <'
    INACTIVEAFTER

    Use a FIND query to retrieve inactive series after a timestamp for a given selector

    INACTIVEAFTER takes 4 parameters given as a list containing :
       - a read token
       - a class selector
       - labels as a map
       - Timestamp (in platform time unit, probably µs) after which a given Geo Time Series was inactive.

    Example : [ 'YourReadToken' 'class_selector' { } NOW 3 d - ] @INACTIVEAFTER

    See on the forge https://forge.ovh/packages/INACTIVEAFTER

    The code in this project is licensed under MIT license.
  '>

  DOC // The previous multiline string is declared as the macro documentation

  'list' STORE
  $list 0 GET 'rtoken' STORE
  $list 1 GET 'class' STORE
  $list 2 GET 'labels' STORE
  $list 3 GET 'ts' STORE

  {
    'token' $rtoken
    'quiet.after' $ts  
    'labels' $labels
    'class' $class
  } FIND
  
%>
