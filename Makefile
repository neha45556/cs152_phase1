
#.
#srs		{printf("Error at line %d, column %d: unrecognized symbol \"%s\"\n", currline, currPos, yytext); exit(0);}
parse: phase1.lex
	flex phase1.lex
	gcc -o lexer lex.yy.c -lfl

clean:
	rm -rf lex.yy.c *.o lexer
