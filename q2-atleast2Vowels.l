%{
  /*
  * Develop a scanner using LEX to count and print words that has atleast two vowels
  *
  * Author: adarshPatel509
  */
  int count = 0;
%}

%%

[\t]+                   /* ignore whitespaces */ ;

[a-zA-Z]*[aeiouAEIOU][a-zA-Z]*[aeiouAEIOU][a-zA-Z]*   {
                                                        count++;
                                                        printf("%s\n", yytext);
                                                      }

.                       {}

\n                      { 
                          return 0;
                        }

%%

main() {
  yylex();
  printf("Number of words with atleast two vowels are: %d\n", count);
  return 0;
}