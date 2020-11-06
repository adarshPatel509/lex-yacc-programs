# CSPC41 – PRINCIPLES OF COMPILER DESIGN
##  Programming Assignment


### [How to Run ?](http://theholeintheace.blogspot.com/2012/11/how-to-run-lex-and-yacc-programs-on.html)

```
Executing LEX Programs:
$ lex fileName.l
$ cc -o out lex.yy.c -ll
$ ./out

Executing LEX and YACC together:
$ cd toFolder
$ yacc -d fileName.y
$ lex fileName.l
$ cc -o out y.tab.c lex.yy.c -ly -ll
$ ./out
```

***HAPPY CODING! 🥂***