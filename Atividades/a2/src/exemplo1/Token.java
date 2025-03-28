package exemplo1;

// Classe mais geral de token
public class Token {
    public static final Token INTEGER_LITERAL = null;
    public static final Token COLON = null;
    public static final Token OPERATOR = null;
    public static final Token SEMICOLON = null;
    public static final Token IDENTIFIER = null;
    public static final Token TILDE = null;
    public static final Token ASSIGN = null;
    public static final Token DO = null;
    public static final Token IF = null;
    public static final Token IN = null;
    public static final Token END = null;
    public static final Token LET = null;
    public static final Token VAR = null;
    public static final Token ELSE = null;
    public static final Token THEN = null;
    public static final Token BEGIN = null;
    public static final Token CONST = null;
    public static final Token WHILE = null;
    public final Tag tag;

    public Token(Tag t) {
        tag = t;
    }

    @Override
    public String toString() {
        return "Token: <" + tag + ">";
    }
}