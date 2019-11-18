package cn.cslg.bean;

public class CarBean {

    private String id;
    private String brand;
    private String type;
    private String price;



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public CarBean() {
        super();
        // TODO Auto-generated constructor stub
    }

    public CarBean(String id, String brand, String type, String price) {
        super();
        this.id = id;
        this.brand = brand;
        this.type = type;
        this.price = price;
    }



}
