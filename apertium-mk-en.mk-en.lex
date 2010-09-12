DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

LIST N = (n) ;
LIST A = (adj) ;
LIST Def = (def) ;
LIST Fract = ("третина") ("половина") ;
LIST Num = (num) ;
LIST Comp = (comp) ;

SET NUM = Num | Fract ;

SECTION

SUBSTITUTE ("од") ("од:3") ("од") (-1 ("дел")) ;
	## Изложбата е дел од Годината на Турција во Јапонија.

SUBSTITUTE ("од") ("од:3") ("од") (-1 NUM) (1 Def) ;
	## Една третина од населението е помладо од 30 години.

SUBSTITUTE ("од") ("од:3") ("од") (-1 ("отсто") LINK -1 Num) (1 Def) ;
	## Бројот на имигрантите нема да надмине 15 отсто од вкупното население на другата страна.

SUBSTITUTE ("од") ("од:5") ("од") (-1 Comp) ;

SUBSTITUTE ("на") ("на:3") ("на") (1 ("Косово")) ;
	## Русија има 650 мировници на Косово и 320 во Босна и Херцеговина.
