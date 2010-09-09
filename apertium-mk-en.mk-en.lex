DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

LIST N = (n) ;
LIST Def = (def) ;

LIST Top = (top) ;

SET N-DEF = N + Def ;
SET TOPONYM = Top ;

SECTION

SUBSTITUTE ("од") ("од:3") ("од") (-1 ("дел")) ;
