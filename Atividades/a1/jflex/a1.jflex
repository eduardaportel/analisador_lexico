/**
 * Analisador léxico para expressões simples
 */
package a1;

%%

%class Lexer
%unicode
// %debug
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
letter	= [A-Z]
constant = "true"|"false"

%%
/* Regras e ações */
{ws}		{ /* ignorar */ }

implies		{ return new Token(Tag.IMPLIES);}
or		    { return new Token(Tag.OR);}
and		    { return new Token(Tag.AND);}
not         { return new Token(Tag.NOT);}
"("		    { return new Token(Tag.LP);}
")"		    { return new Token(Tag.RP);}

{letter}		{ return new PropLetter(yytext().charAt(0));}
{constant}			{ return new PropConstant(yytext().equals("true"));}


/* Qualquer outro - gerar erro */
. {
    throw new Error(
        "Simbolo ilegal '" + yytext() + "' na linha " + (yyline + 1) + ", coluna " + (yycolumn + 1) + ". Use apenas A-Z, operadores logicos ou true/false."
    );
 }
