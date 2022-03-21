package com.motor.dao;

import com.motor.model.CartItems;

import java.util.List;

public interface ICartItemsDAO {
    void insert(CartItems cartItem);

    void edit(CartItems cartItem);

    void delete(int id);

    CartItems get(String name);

    CartItems get(int id);

    List<CartItems> getAll();

    List<CartItems> search(String name);
}
