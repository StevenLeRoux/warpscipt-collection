<% 
  <'
    PREDICTLINEAR

    Use a linear regression to predict upcoming values

    See on the forge https://forge.ovh/packages/PREDICTLINEAR

    The code in this project is licensed under MIT license.

    Example :

	NOW 'now' STORE
	[ 'rToken' 'os.mem' { 'host' '42.domain.tld' } $now 2 h ] FETCH
	[ SWAP bucketizer.last $now 1 m 0 ] BUCKETIZE

	{
		'forecast' 20 m          // optional, default: 20 m
		'observation' 10 m 	 // optional, default: 20 m 
		'tick'			 // optional, default: NOW
		'limit' 'lt_32000000000' // optional, default: null
		'bucketspan' 5 m         // optional, default: 5 m
	}

	@PREDICTLINEAR
  '>

    DOC // The previous multiline string is declared as the macro documentation


    'DEFAULT' FIMPORT

    'params' STORE

    [ ] 'GTSLIST'  STORE
    
    $params 'forecast' 20 m @DEFAULT
    $params 'observation' 20 m @DEFAULT
    $params 'tick' NOW @DEFAULT
    $params 'limit' 'null' @DEFAULT
    $params 'bucketspan' 5 m @DEFAULT
    
    <% 
        DROP 
        'gts' STORE
        $gts 1 ->LIST $GTSLIST APPEND 'GTSLIST' STORE
        
        $gts NAME 'name' STORE 
        $gts LABELS 'labels' STORE
        $gts LASTTICK 'last' STORE
        $gts $last ATTICK 4 GET 'last_value' STORE 
        $gts  $tick  $observation TIMECLIP  LR   '_a' STORE '_b' STORE 
        
        NEWGTS $name  '.forecast' + RENAME $labels RELABEL 
        $tick NaN NaN NaN $last_value  ADDVALUE
        $tick $forecast + NaN NaN NaN $_a $tick $forecast + * $_b + ADDVALUE 
        [ SWAP bucketizer.last $tick $forecast + $bucketspan 0 ] BUCKETIZE  INTERPOLATE 
        
        <% $limit 'null' != %>
        <%
            $limit '_' SPLIT DUP 0 GET '_mapper' STORE 1 GET TODOUBLE '_value'  STORE
            [ SWAP $_value 'mapper.' $_mapper + EVAL 0 0 0 ] MAP 
        %> IFT
        
        0 GET
    %> LMAP
    
    $GTSLIST  // Return originals GTS
    
%> 
