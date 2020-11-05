%{
  /*
  * Write a LEX/YACC program to validate email id ( .....@gmail/yahoo/hotmail.com/in etc).
  *
  * Author: adarshPatel509
  */
  #include "y.tab.h"
  extern int yylval; 
%}

EMAIL_REGEX ([a-zA-Z0-9_]+@[a-zA-Z0-9_]+\.[a-zA-Z]+)
%%

[\t ]+                    /* ignore whitespaces */ ;

{EMAIL_REGEX}             {
                            return EMAIL;
                          }

.                         {
                            return yytext[0];
                          }

\n                        {
                            return 0;
                          }

%%