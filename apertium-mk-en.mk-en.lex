DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

LIST N = (n) ;
LIST A = (adj) ;
LIST Def = (def) ;
LIST Fract = ("третина") ("половина") ;
LIST Num = (num) ;
LIST Comp = (comp) ;
LIST TimeAdv = ("денес") ;
LIST Sg1 = (p1 sg);
LIST Sg2 = (p2 sg);
LIST Sg3 = (p3 sg);
LIST Toponym = (np top);

SET NUM = Num | Fract ;
SET TIME = TimeAdv ;
SET TOPONYM = Toponym | ("ЕУ");

SECTION

SUBSTITUTE ("од") ("од:3") ("од") (-1 ("дел")) ;
	## Изложбата е дел од Годината на Турција во Јапонија.

SUBSTITUTE ("од") ("од:3") ("од") (-1 NUM) (1 Def) ;
	## Една третина од населението е помладо од 30 години.

SUBSTITUTE ("од") ("од:3") ("од") (-1 ("отсто") LINK -1 Num) (1 Def) ;
	## Бројот на имигрантите нема да надмине 15 отсто од вкупното население на другата страна.

SUBSTITUTE ("од") ("од:5") ("од") (-1 Comp) ;
	##

SUBSTITUTE ("од") ("од:5") ("од") (-1 ("повеќе")) (1 Num) ;
	## СИПА ќе започне со обука на повеќе од 140 дополнителни полициски сили за обезбедување.

SUBSTITUTE ("до") ("до:2") ("до") (-2 ("од")) (-1 Num) (1 Num OR TIME) ;
	## Лустрацијата може да се врши за периодот од 1945 до 1991 година

SUBSTITUTE ("до") ("до:2") ("до") (-3 ("од")) (-2 Num) (-1 ("година")) (1 Num OR TIME) ;
	## Од 1945 година до 1947 година тој работил како помошен генерален секретар на Претседателството на Владата на ФНРЈ
	## Годинава „Службен весник“ ќе го заокружи процесот за достапност на сите прописи од 1945 година до денес.

SUBSTITUTE ("до") ("до:2") ("до") (-3 ("од")) (-2 Num) (-1 ("година")) (1 N LINK 1 ("во") LINK 1 Num) ;
	## Јосип Броз Тито е лидер на Југославија од 1945 година до смртта во 1980 година.

SUBSTITUTE ("до") ("до:3") ("до") (-2 ("ќе")) (-1 ("трае")) ;
	## Вежбата почна на 10-ти септември и ќе трае до среда.

SUBSTITUTE ("на") ("на:3") ("на") (1 ("Косово")) ;
	## Русија има 650 мировници на Косово и 320 во Босна и Херцеговина.

SUBSTITUTE ("на") ("на:1") ("на") (-1 N) (1C TOPONYM) (NOT 1 ("Косово")) ;
	## Бисерко вели дека странските донатори, кои го поддржуваат буџетот на Србија, треба да извршат притисок врз Владата.

SUBSTITUTE ("на") ("на:1") ("на") (-1 N) (1C ("република") LINK 1 A) (NOT 1 ("Косово")) ;
	## Од друга страна, пензионерите на Република Српска (РС) можат да очекуваат просечно само околу 66 американски долари.

SUBSTITUTE ("на") ("на:4") ("на") (-2 ("од")) (-1 Num) (1 Num) ;
	## Планот за реструктуирање предвидува намалување на бројот на државните секретари од 82 на 52, за да се зголеми ефикасноста.

SUBSTITUTE ("за") ("за:2") ("за") (-1 ("министер") OR ("министерство")) ;
	## Одбивајќи да даде имиoа, српскиот министер за внатрешни работи изјави дека се идентификувани двајца од осомничените убијци.

SUBSTITUTE ("сака") ("сака:1") ("сака" vblex) (0 Sg2);
	## Зар не сакаш да дојдеш?

SUBSTITUTE ("меѓу") ("меѓу:1") ("меѓу") (1 Num) (2 ("и")) (3 Num) ;
	## Според античните писатели, голем метеор паднал во северна Грција меѓу 466 и 467 г. пред н.е. 

SUBSTITUTE ("меѓу") ("меѓу:1") ("меѓу") (1 ("два") + Def) ;
	## Папандреу рече дека ваквите дејства може да создадат сериозни проблеми во односите меѓу двете земји

#
# Automatically generated
#

