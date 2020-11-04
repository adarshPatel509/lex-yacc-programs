%{
  /*
  * Develop a scanner using LEX to count and print only those words are in mixed case
  *
  * Author: adarshPatel509
  */
  int mixedCaseCount = 0;
%}

%%

[\t]+                   /* ignore whitespaces */ ;

[a-zA-Z]*([a-z][a-zA-Z]*[A-Z]|[A-Z][a-zA-Z]*[a-z])[a-zA-Z]*  {
                                                                mixedCaseCount++;
                                                                printf("%s\n", yytext);
                                                              }

.                       {}

\n                      { 
                          return 0;
                        }

%%

main() {
  yylex();
  printf("Number of words with mixed case: %d\n", mixedCaseCount);
  return 0;
}