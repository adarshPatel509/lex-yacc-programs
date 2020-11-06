%option yylineno

%{
  /*
  * Write LEX and YACC specifications for “IF – ELSE” programming constructs
  *
  * Author: adarshPatel509
  */
  #include "y.tab.h"
  extern int yylval;
%}

NUMBER        ([0-9]+(".")?([0-9])*)
IDENTIFIER    ([a-zA-z_][a-zA-z_0-9]*)

%%

[\t ]           /* ignore whitespaces */ ;

if              {return IF;}  
else            {return ELSE;}  
"&&"            {return AND;}  
"||"            {return OR;}  
"<="            {return LE;}  
">="            {return GE;}  
">"             {return GT;}  
"<"             {return LT;}  
"!="            {return NE;}  
"++"            {return INC;}  
"--"            {return DEC;}  
"=="            {return EQ;}

{NUMBER}        {return NUM;}  
{IDENTIFIER}    {return ID;}

.               {return yytext[0];}

\n              {yylval = yylineno;}

\n\n            {return 0;}

%%