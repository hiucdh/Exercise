package models;

public class Item {
    private String img;
    private String text;
    private String line1;
    private String line2;

    public Item(String img, String text, String line1, String line2) {
        this.img = img;
        this.text = text;
        this.line1 = line1;
        this.line2 = line2;
    }

    public String getImg() { return img; }
    public String getText() { return text; }
    public String getLine1() { return line1; }
    public String getLine2() { return line2; }
}
