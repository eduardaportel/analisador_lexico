package a1;

// Token de operador relacional
public class PropLetter extends Token {
    public final char letter;

    public PropLetter(char c) {
        super(Tag.PROP_LETTER);
        letter = c;
    }

    @Override
    public String toString() {
        return "PropLetter: <" + this.tag + ",\"" + this.letter + "\">";
    }
}