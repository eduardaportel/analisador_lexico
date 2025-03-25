package a1;

// Classe mais geral de token
public class Token {
    public final Tag tag;

    public Token(Tag t) {
        this.tag = t;
    }

    @Override
    public String toString() {
        return "Token: <" + tag + ">";
    }
}