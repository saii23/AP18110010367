%%
[AEIOOUaeiou]  {printf("%s is vowel\n",yytext);}
[a-zA-Z]    {printf("%s is consonent\n",yytext);}
%%

main()
{
yylex();
}
int yywrap()
{
return 1;
}