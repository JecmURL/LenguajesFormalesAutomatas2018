package JE;

%%

%public
%class PHP_compiler
%standalone

%unicode

%{
  String db_name;
%}

%%
"$recordset['"[a-zA-Z]+([a-zA-Z]+|_|\d)*"']" { db_name = yytext().substring(9); }
"$recordset['"[a-zA-Z]+([a-zA-Z]+|_|\d)*"']" { System.out.println("Token for Data Base connection with name: " + db_name); }
