DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

LIST N = (n) ;
LIST A = (adj) ;
LIST Def = (def) ;
LIST Num = (num) ;

SECTION

SUBSTITUTE ("од") ("од:3") ("од") (-1 ("дел")) ;
SUBSTITUTE ("од") ("од:3") ("од") (-1 Num) (1 Def) ;
