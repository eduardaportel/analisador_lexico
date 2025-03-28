package a2;

// Token de número
public class Num extends Token {
    public final int value;

    public Num(String lexeme) {
        super(Tag.NUMBER);
        this.value = Integer.parseInt(lexeme);
    }

    @Override
    public String toString() {
        return "Number: <" + this.tag + ", " + this.value + ">";
    }
}
