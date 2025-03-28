package a2;

// Rótulos para as marcas
public enum Tag {
    // control flow keywords
    IF, THEN, ELSE, WHILE,
    DO, LET, IN, BEGIN, END, 

    // declarations
    CONST, VAR,

    // ponctuation/symbols
    LPAREN, RPAREN, SEMICOLON,
    TILDE, COLON, 

    // operators
    PLUS, MINUS, MULT, DIV, LT,
    GT, EQ, BACKSLASH,

    // identifiers and literals
    ID, NUMBER,

    // special tokens
    EOF //End Of File
}