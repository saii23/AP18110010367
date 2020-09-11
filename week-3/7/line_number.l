
%{ 
int line_number = 1;  
%} 


line .*\n	 

%% 
{line} { fprintf(yyout,"%10d %s", line_number++,yytext); } 

%% 

int yywrap(){} 

int main(int argc, char*argv[]) 
{ 
extern FILE *yyin;  
extern FILE *yyout;  
yyin = fopen("test.c","r");								
yyout=fopen("test.c","a");
yylex();

return 0; 
} 
