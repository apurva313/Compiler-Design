/* Program to find no. of line, spaces, character, word. */

%{
#include<stdio.h>
int sc=0,wc=0,lc=0,cc=0;
%}

%%
[\n] { lc++; cc+=yyleng;}
[  \t] { sc++; cc+=yyleng;}
[^\t\n ]+ { wc++;  cc+=yyleng;}
%%

int main(int argc ,char* argv[ ])
{
	printf("Enter the input:\n");
	yylex();
	printf("The number of words=%d\n The number of characters are=%d\n The number of spaces=%d\n",wc,cc,sc);
	printf("The number of lines=%d\n  ",lc);
}

int yywrap( )
{
	return 1;
}