package JE;

%%

%public
%class PHP_compiler
%type Token
L = [a-zA-Z]
D= [0-9]
WHITE = [\t\r\n]
%(
public String lexeme;
public String db_name;
%)

%%
(WHITE) {/*Ignore*/}
"--"(WHITE)L+(L+|_|D)* {/*Ignore*/}
"<?php" {return HEADER}
"?>" {return FOOTER}
"const" {return CONSTANTE}
L+(L|_|D)*
"$recordset['"L+(L+|_|D)*"']" { db_name = yytext().substring(12,yytext().length()-2); }
"$recordset['"L+(L+|_|D)*"']" { return db_name }

. {return ERROR;}