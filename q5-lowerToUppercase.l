%{
  /*
  * Develop a scanner using LEX to convert the lower case letters to uppercase
  *
  * Author: adarshPatel509
  */
  
%}

LOWER [a-z]
UPPER [A-Z]

%%

[\t]+                   /* ignore whitespaces */ ;

{UPPER}                 {
                          printf("%c", yytext[0]);
                        }

{LOWER}                 {
                          printf("%c", yytext[0] - 32);
                        }


.                       { ECHO; }

\n                      { 
                          return 0;
                        }

%%

main() {
  yylex();
  return 0;
}