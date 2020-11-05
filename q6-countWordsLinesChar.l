%{
  #include<string.h>
  /*
  * Develop a scanner using LEX to count no. of words, lines, characters, numbers, spaces,
  * comma, and full stop. (i/p: A paragraph in English).
  *
  * Author: adarshPatel509
  */
  int wordsCount = 0;
  int lineCount = 1;
  int charactersCount = 0;
  int numbersCount = 0;
  int spacesCount = 0;
  int commaCount = 0;
  int fullStopCount = 0;
%}

%%

[0-9]+                  {
                          numbersCount++;
                          charactersCount += (int)strlen(yytext);
                        }

[ ]+                    {
                          spacesCount++;
                        }
                      
,                       {
                          commaCount++;
                          charactersCount++;
                        }

\.                      {
                          fullStopCount++;
                          charactersCount++;
                        }

[a-zA-Z]+               {
                          wordsCount++;
                          charactersCount += (int)strlen(yytext);
                        }

.                       {
                          charactersCount++;
                        }

\n                      { 
                          lineCount++;
                          charactersCount++;
                        }

\n\n                    {
                          return 0;
                        }

%%

main() {
  yylex();
  printf("number of words: %d\n", wordsCount);
  printf("number of lines: %d\n", lineCount);
  printf("number of characters: %d\n", charactersCount);
  printf("number of numbers: %d\n", numbersCount);
  printf("number of spaces: %d\n", spacesCount);
  printf("number of commas: %d\n", commaCount);
  printf("number of full stops: %d\n", fullStopCount);
  return 0;
}