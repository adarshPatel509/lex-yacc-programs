%{
  /*
  * Develop a scanner using LEX to count and print words that start with "k‟ or "K‟
  *
  * Author: adarshPatel509
  */
  int countK = 0;
%}

%%

[\t]+                        /* igone whitespaces */ ;

[kK][a-zA-Z]*               {
                              countK++;
                              printf("%s\n", yytext);
                            }

[a-zA-Z]*                   {}

.                           {}

\n                          {
                              return 0;
                            }

%%

main() {
  yylex();
  printf("Count of words starting with k or K are: %d\n", countK);
  return 0;
}