'DEFAULT' FIMPORT // Import the macro from the forge

// Your macro's specifications here

{ 'foo' 42  }

'foo' 0 @DEFAULT
$foo 42 == ASSERT

'bar' true @DEFAULT
$bar true == ASSERT

DROP
'unit test successful'
