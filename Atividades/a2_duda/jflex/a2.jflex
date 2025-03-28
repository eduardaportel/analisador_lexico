/**
 * Analisador léxico para expressões simples
 */
package a2;

%%

%class Lexer
%unicode
%standalone
%line
%column
%type Token

%eofval{
    return new Token(Tag.EOF);
%eofval}

%eof{
    System.out.println("Analise lexica terminada com sucesso!");
%eof}

%{
// Macros
%}
delim	= [\ \t\n]
ws		= {delim}+
letter	= [A-Za-z]
digit	= [0-9]
id		= {letter}({letter}|{digit})*
number	= {digit}+

%%
/* Regras e ações */
{ws}		{ /* ignorar */ }

"if"        { return new Token(Tag.IF); }
"then"      { return new Token(Tag.THEN); }
"else"      { return new Token(Tag.ELSE); }
"while"     { return new Token(Tag.WHILE); }
"do"        { return new Token(Tag.DO); }
"let"       { return new Token(Tag.LET); }
"in"        { return new Token(Tag.IN); }
"begin"     { return new Token(Tag.BEGIN); }
"end"       { return new Token(Tag.END); }

"("         { return new Token(Tag.LPAREN); }
")"         { return new Token(Tag.RPAREN); }
";"         { return new Token(Tag.SEMICOLON); }
"const"     { return new Token(Tag.CONST); }
"~"         { return new Token(Tag.TILDE); }
"var"       { return new Token(Tag.VAR); }
":"         { return new Token(Tag.COLON); }

"+"         { return new Token(Tag.PLUS); }
"-"         { return new Token(Tag.MINUS); }
"*"         { return new Token(Tag.MULT); }
"/"         { return new Token(Tag.DIV); }
"<"         { return new Token(Tag.LT); }
">"         { return new Token(Tag.GT); }
"="         { return new Token(Tag.EQ); }
"\\"        { return new Token(Tag.BACKSLASH); }

{id}		{ return new Id(yytext()); }
{number}	{ return new Num(yytext()); }


/* Qualquer outro - gerar erro */
. {
    throw new Error(
        "Símbolo ilegal '" + yytext() + "' na linha " + (yyline + 1) + ", coluna " + (yycolumn + 1) + "."
    );
}