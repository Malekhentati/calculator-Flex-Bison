%{#include<stdio.h>
%}

%%
"+" {return "addition";}
"-" {return "soustraction";}
"*" {return "multiplication";}
"/" {return "division";}
[0-9]+ {return number;}
%%

void main(){
printf ("donner instruction : \n");
yylex();
}