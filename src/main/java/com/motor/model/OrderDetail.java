package com.motor.model;

import com.motor.service.IProductService;
import com.motor.service.impl.ProductServiceImpl;

public class OrderDetail {
    private int id;
    private int quantity;
    private int unit_price;
    private int product_id;
    private int order_id;

    public OrderDetail() {
    }

    public OrderDetail(int id, int quantity, int unit_price, int product_id, int order_id) {
        this.id = id;
        this.quantity = quantity;
        this.unit_price = unit_price;
        this.product_id = product_id;
        this.order_id = order_id;
    }

    IProductService productService = new ProductServiceImpl();

    public String getProductName() {
        return productService.findOne(product_id).getName();
    }

    public int getOriginalPrice() {
        return productService.findOne(product_id).getPrice();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(int unit_price) {
        this.unit_price = unit_price;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", quantity=" + quantity +
                ", unit_price=" + unit_price +
                ", product_id=" + product_id +
                ", order_id=" + order_id +
                '}';
    }
}
