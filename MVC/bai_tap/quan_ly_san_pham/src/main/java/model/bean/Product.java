package model.bean;

public class Product {
    private int id;
    private String name;
    private double price;
    private String date;
    private String img;
    private String origin;

    public Product() {
    }

    public Product(int id, String name, double price, String date, String img, String origin) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.date = date;
        this.img = img;
        this.origin = origin;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return this.price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImg() {
        return this.img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getOrigin() {
        return this.origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }
}
