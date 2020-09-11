%{
int line=0;
%}

%%
\n   ++line;
%%

main()
{
yylex();
printf("number of lines=%d",line);
}
int yywrap()
{
return 1;
}