%{
  /*
  * Develop a scanner using LEX to count no. of classes, data members, and member
  * functions in the given 'C++' program
  *
  * Author: adarshPatel509
  */
  int classesCount = 0;
  int dataMembersCount = 0;
  int memberFunctionsCount = 0;
%}

DATA_TYPES ((((signed|unsigned|short|long)[ ])?(int|char|double))|(float|bool|void|wchar_t))
IDENTIFIERS ([a-zA-Z_][a-zA-Z0-9_]*)

MEMBER_FUNCTIONS ({DATA_TYPES}[ ]+{IDENTIFIERS}[ ]*\()
DATA_MEMBERS ({DATA_TYPES}[ ]+{IDENTIFIERS}) 

%%

[\t]+                   /* ignore whitespaces */ ;

class                   {
                          classesCount++;
                        }

{MEMBER_FUNCTIONS}      {
                          memberFunctionsCount++;
                        }

{DATA_MEMBERS}          {
                          dataMembersCount++;
                        }


[a-zA-Z]*               {}

.                       {}

\n\n                    { 
                          return 0;
                        }

%%

main () {
  yylex();
  printf("Number of classes: %d\n", classesCount);
  printf("Number of data members: %d\n", dataMembersCount);
  printf("Number of member functions: %d\n", memberFunctionsCount);
  return 0;
}