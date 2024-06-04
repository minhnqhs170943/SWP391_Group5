/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.text.NumberFormat;
import java.util.Date;
import java.util.Locale;

/**
 *
 * @author tran tung
 */
public class Product {

    private String id;
    private String name;
    private String description;
    private Date release_date;
    private int price;
    private int quality;
    private String url_img1;
    private String url_img2;
    private String url_img3;
    private String url_img4;
    private String url_img5;
    private int categoryID;
    private int brandID;

    

    public Product() {

    }

    public Product(String id, String name, String description, Date release_date, int price, int quality, String url_img1, String url_img2, String url_img3, String url_img4, String url_img5, int categoryID, int brandID) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.release_date = release_date;
        this.price = price;
        this.quality = quality;
        this.url_img1 = url_img1;
        this.url_img2 = url_img2;
        this.url_img3 = url_img3;
        this.url_img4 = url_img4;
        this.url_img5 = url_img5;
        this.categoryID = categoryID;
        this.brandID = brandID;
    }
    
    public Product(String id, String name, String description, int price, Date release_date, int quality, String url_img1, String url_img2, String url_img3, String url_img4, String url_img5) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.release_date = release_date;
        this.quality = quality;
        this.url_img1 = url_img1;
        this.url_img2 = url_img2;
        this.url_img3 = url_img3;
        this.url_img4 = url_img4;
        this.url_img5 = url_img5;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public String getUrl_img1() {
        return url_img1;
    }

    public void setUrl_img1(String url_img1) {
        this.url_img1 = url_img1;
    }

    public String getUrl_img2() {
        return url_img2;
    }

    public void setUrl_img2(String url_img2) {
        this.url_img2 = url_img2;
    }

    public String getUrl_img3() {
        return url_img3;
    }

    public void setUrl_img3(String url_img3) {
        this.url_img3 = url_img3;
    }

    public String getUrl_img4() {
        return url_img4;
    }

    public void setUrl_img4(String url_img4) {
        this.url_img4 = url_img4;
    }

    public String getUrl_img5() {
        return url_img5;
    }

    public void setUrl_img5(String url_img5) {
        this.url_img5 = url_img5;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    @Override
    public String toString() {
        return "product{" + "id=" + id + ", name=" + name + ", description=" + description + ", release_date=" + release_date + ", price=" + price + ", quality=" + quality + ", url_img1=" + url_img1 + ", url_img2=" + url_img2 + ", url_img3=" + url_img3 + ", url_img4=" + url_img4 + ", url_img5=" + url_img5 + ", categoryID=" + categoryID + ", brandID=" + brandID + '}';
    }
    
    public String getFormattedPrice() {
        NumberFormat numberFormat = NumberFormat.getInstance(new Locale("vi", "VN"));
        return numberFormat.format(price) + " VNĐ";
    }
    
}



