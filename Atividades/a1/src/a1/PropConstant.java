package a1;

public class PropConstant extends Token{
    public final boolean value;

    public PropConstant(boolean v){
        super(Tag.PROP_CONSTANT);
        value = v;
    }

    @Override
    public String toString() {
        return "PropConstant: <" + this.tag + ",\"" + this.value + "\">";
    }
}
