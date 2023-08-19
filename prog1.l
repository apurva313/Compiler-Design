/* Write a lex Program to find the total no. of Keyword, Number and Word in a string. */

%{
	#include<stdio.h>
	
%}
%%
if |
else |
printf {printf("%s is a keyword \n", yytext);}
[0-9]+ {printf("%s is a number \n", yytext);}
[a-zA-Z]+  {printf("%s is a word \n", yytext);}
.|\n {ECHO;}
%%
int main(){
	printf("\nEnter the string:");
	
	yylex();
}
int yywrap()
{
	return 1;
}