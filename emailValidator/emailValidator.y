%{
  /*
  * Write a LEX/YACC program to validate email id ( .....@gmail/yahoo/hotmail.com/in etc).
  *
  * Author: adarshPatel509
  */
  #include<stdio.h>
  int yylex();
  int yyerror();
%}

%token EMAIL

%%

statement: EMAIL        { printf("Valid Email!\n"); }
         ;

%%

int main() {
  yyparse();
  return 0;
}

int yyerror() {
  printf("Invalid Email!\n");
  return 0;
}