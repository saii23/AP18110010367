%{
int vowel=0;
int consonent=0;
%}

%%
[aeiouAEIOU] {vowel++;}
[a-zA-Z]  {consonent++;}
%%

main(){

yylex();
printf("vowels=%d consonents=%d",vowel,consonent);
}
int yywrap()
{
return 1;
}