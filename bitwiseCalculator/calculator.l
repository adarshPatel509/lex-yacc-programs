%{
  /*
  * Design a calculator with only bitwise operators like &, | , ^ using LEX and YACC
  *
  * Author: adarshPatel509
  */
  #include "y.tab.h"
  extern int yylval;
%}

%%

[\t ]+                        /* ignore whitespaces */ ;

[0-9]+                        {
                                yylval = atoi(yytext);
                                return NUMBER;
                              }

.                             {
                                return yytext[0];  
                              }

\n                            {
                                return 0;
                              }

%%