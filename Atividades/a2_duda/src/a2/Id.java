package a2;

// Token de identificador
public class Id extends Token {
    public final String name;

    public Id(String name) {
        super(Tag.ID);
        this.name = name;
    }

    @Override
    public String toString() {
        return "ID: <" + this.tag + ",\"" + this.name + "\">";
    }
}