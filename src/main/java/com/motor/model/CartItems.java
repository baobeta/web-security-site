package com.motor.model;

public class CartItems {
    private int id;
    private int quantity;
    private int unitprice;
    private Product pid;
    private int uid;

    public CartItems() {
    }

    public CartItems(int id, int quantity, int unitprice, Product pid, int uid) {
        this.id = id;
        this.quantity = quantity;
        this.unitprice = unitprice;
        this.pid = pid;
        this.uid = uid;
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "CartItems{" +
                "id=" + id +
                ", quantity=" + quantity +
                ", unitprice=" + unitprice +
                ", pid=" + pid +
                ", uid=" + uid +
                '}';
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

    public int getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(int unitprice) {
        this.unitprice = unitprice;
    }

    public Product getPid() {
        return pid;
    }

    public void setPid(Product pid) {
        this.pid = pid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
