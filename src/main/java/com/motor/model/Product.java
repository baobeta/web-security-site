package com.motor.model;

import com.motor.service.IBrandService;
import com.motor.service.ICategoryService;
import com.motor.service.IUserService;
import com.motor.service.impl.BrandServiceImpl;
import com.motor.service.impl.CategoryServiceImpl;
import com.motor.service.impl.UserServiceImpl;

public class Product {
    private int id;
    private String name;
    private int price;
    private String description;
    private String image;
    private int category_id;
    private int seller_id;
    private int amount;
    private int status;
    private int brand_id;

    public Product() {
    }

    public Product(int id, String name, int price, String description, String image, int category_id, int seller_id, int amount, int status, int brand_id) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.image = image;
        this.category_id = category_id;
        this.seller_id = seller_id;
        this.amount = amount;
        this.status = status;
        this.brand_id = brand_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    ICategoryService categoryService = new CategoryServiceImpl();
    IBrandService brandService = new BrandServiceImpl();
    IUserService userService = new UserServiceImpl();

    public String getCategoryName() {
        return categoryService.findOne(category_id).getName();
    }

    public String getBrandName() {
        return brandService.findOne(brand_id).getName();
    }

    public String getSellerName() { return userService.findOne(seller_id).getfullname();}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", category_id=" + category_id +
                ", seller_id=" + seller_id +
                ", amount=" + amount +
                ", status=" + status +
                ", brand_id=" + brand_id +
                '}';
    }
}
