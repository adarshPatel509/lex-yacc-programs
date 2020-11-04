%{
  /*
  * Develop a scanner using LEX to count no. of operators, identifiers, keywords, special
  * symbols in the given 'C' program
  *
  * Author: adarshPatel509
  */
  int operatorsCount = 0;
  int identifiersCount = 0;
  int keywordsCount = 0;
  int specialSymbolsCount = 0;
%}

KEYWORDS        (auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while)

ARITHMETIC      (\+|-|\*|\/|%|\+\+|--)
RELATIONAL      (==|!=|>=|<=|>|<)
LOGICAL         (&&|\|\||!)
BITWISE         (\^|\||&|<<|>>)
ASSIGNMENT      (=|\+=|-=|\*=|\/=|%=)

OPERATORS       ({ARITHMETIC}|{RELATIONAL}|{LOGICAL}|{BITWISE}|{ASSIGNMENT})

SPECIAL_SYMBOLS [;{}\(\)\[\]@#$,"`~!&?\\\.\*]

%%

[\t]+                   /* ignore whitespaces */ ;

{OPERATORS}             {
                          operatorsCount++;
                          printf("operator: %s\n", yytext);
                        }

{KEYWORDS}              {
                          keywordsCount++;
                          printf("keyword: %s\n", yytext);
                        }

[a-zA-Z_][a-zA-Z0-9_]*  {
                          identifiersCount++;
                          printf("identifier: %s\n", yytext);
                        }



{SPECIAL_SYMBOLS}       { 
                          specialSymbolsCount++;
                          printf("special symbol: %s\n", yytext);
                        }

.                       {}                        

\n                      { 
                          return 0;
                        }

%%

main() {
  yylex();
  printf("Number of Operators: %d\n", operatorsCount);
  printf("Number of Identifiers: %d\n", identifiersCount);
  printf("Number of Keywords: %d\n", keywordsCount);
  printf("Number of Special Symbols: %d\n", specialSymbolsCount);
  return 0;
}