
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
yyout=fopen("test.c","w");
yylex();

return 0; 
} 
         1 
         2 %{ 
         3 int line_number = 1;  
         4 %} 
         5 
         6 
         7 line .*\n	 
         8 
         9 %% 
        10 {line} { fprintf(yyout,"%10d %s", line_number++,yytext); } 
        11 
        12 %% 
        13 
        14 int yywrap(){} 
        15 
        16 int main(int argc, char*argv[]) 
        17 { 
        18 extern FILE *yyin;  
        19 extern FILE *yyout;  
        20 yyin = fopen("test.c","r");								
        21 yyout=fopen("test.c","w");
        22 yylex();
        23 
        24 return 0; 
        25 } 
