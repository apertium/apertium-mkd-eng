DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

LIST N = (n) ;
LIST A = (adj) ;
LIST Def = (def) ;
LIST Frac = ("третина") ("половина") ;
LIST Num = (num) ;
LIST Comp = (comp) ;

SET NUM = Num | Frac ;

SECTION

SUBSTITUTE ("од") ("од:3") ("од") (-1 ("дел")) ;
SUBSTITUTE ("од") ("од:3") ("од") (-1 NUM) (1 Def) ;
SUBSTITUTE ("од") ("од:3") ("од") (-1 ("отсто") LINK -1 Num) (1 Def) ;
SUBSTITUTE ("од") ("од:5") ("од") (-1 Comp) ;
