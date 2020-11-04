%{
  /*
  * Develop a scanner using LEX to count and print vowels that is present in the given word.
  * Author: adarshPatel509
  */
  int vowelsCount = 0;
%}

%%

[\t]+                   /* ignore whitespaces */ ;

[aeiouAEIOU]            {
                          printf("%c", yytext[0]);
                          vowelsCount++;
                        }

.                       {}

\n                      { 
                          return 0;
                        }

%%

main() {
  yylex();
  printf("\nNumber of vowels: %d\n", vowelsCount);
  return 0;
}