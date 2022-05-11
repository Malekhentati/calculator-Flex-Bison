%{#include<stdio.h>
%}

%token nombre '+' '-' '*' '/'
%left '+' '-' 
%left '*' '/' 
%%
expr : expr '+' expr {printf("addition \n");}
expr : expr '-' expr {printf("soustraction \n");}
expr : expr '*' expr {printf("multiplication \n");}
expr : expr '/' expr {printf("division \n");}
expr : nombre {printf("nombre \n");}
%%
void main(){
yyparse();
return();
}
