package com.motor.service;

import com.motor.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    List<Product> findAllBySeller(int userId);

    Product findOne(int id);

    Product findOneById(String id);

    Long insert(Product product);

    void update(Product product);

    void updateStatus(Product product);

    void delete(int id);

    List<Product> findTopSelling();

    List<Product> findTopSellingOfSeller(int seller_id);

    long count();

    List<Product> findAllByCategory(int Id);

    List<Product> getNext3Product(int amount);

    List<Product> getTop3Product();

    List<Product> searchByProductName(String txtSearch);
}
