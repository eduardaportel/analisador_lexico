/**
 * Analisador léxico para expressões simples
 */
package a2;

%%

%class Lexer
%unicode
%debug
%standalone
%line
%column
%type Token

%eofval{
    return new Token(Tag.EOF);
%eofval}

%eof{
    System.out.println("Análise léxica terminada com sucesso!");
%eof}

%{
// Macros
%}
delim	= [\ \t\n]
ws		= {delim}+
letter	= [A-Za-z]
digit	= [0-9]
id		= {letter}({letter}|{digit})*
number	= {digit}+(\.{digit}+)?(E[+-]?{digit}+)?

%%
/* Regras e ações */
// {ws}		{ /* ignorar */ }
// if			{ return new Token(Tag.IF); }
// then		{ return new Token(Tag.THEN); }
// else		{ return new Token(Tag.ELSE); }
// {id}		{ return new Id(yytext()); }
// {number}	{ return new Num(Double.parseDouble(yytext())); }
// "<"			{ return new Relop(Tag.LT);}
// "<="		{ return new Relop(Tag.LE);}
// "="			{ return new Relop(Tag.EQ);}
// "<>"		{ return new Relop(Tag.NE);}
// ">"			{ return new Relop(Tag.GT);}
// ">="		{ return new Relop(Tag.GE);}
// /* Qualquer outro - gerar erro */
// .		    { throw new Error("Símbolo ilegal <" + yytext() +
//                 "(" + (int)(yytext().charAt(0)) + ")" + ">"); }


%class Lexer
%public
%unicode
%line
%column

tokens = [a-zA-Z][a-zA-Z0-9]*
integer_literal = [0-9]+
operator = [\+\-\*\/<>\\=]
whitespace = [ \t\r\n]+

%%

<YYINITIAL> {
  if      { return Token.IF; }
  then    { return Token.THEN; }
  else    { return Token.ELSE; }
  while   { return Token.WHILE; }
  do      { return Token.DO; }
  let     { return Token.LET; }
  in      { return Token.IN; }
  begin   { return Token.BEGIN; }
  end     { return Token.END; }
  const   { return Token.CONST; }
  var     { return Token.VAR; }
  ":="      { return Token.ASSIGN; }
  "~"       { return Token.TILDE; }
  ":"       { return Token.COLON; }
  ";"       { return Token.SEMICOLON; }
  {operator} { return Token.OPERATOR; }
  {integer_literal} { return Token.INTEGER_LITERAL; }
  {tokens}   { return Token.IDENTIFIER; }
  {whitespace} {  }
}

. { System.err.println("Erro Léxico: caractere inválido " + yytext()); }