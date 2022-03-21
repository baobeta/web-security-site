package com.motor.service.impl;

import com.motor.dao.IProductDAO;
import com.motor.dao.impl.ProductDAOImpl;
import com.motor.model.Product;
import com.motor.service.IProductService;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    //    @Inject
    IProductDAO productDAO = new ProductDAOImpl();

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<Product> findAllBySeller(int userId) {
        return productDAO.findAllBySeller(userId);
    }

    @Override
    public Product findOne(int id) {
        return productDAO.findOne(id);
    }

    @Override
    public Product findOneById(String id) {
        return productDAO.findOneById(id);
    }

    @Override
    public Long insert(Product product) {
        return productDAO.insert(product);
    }

    @Override
    public void update(Product product) {
        productDAO.update(product);
    }

    @Override
    public void updateStatus(Product product) {
        productDAO.updateStatus(product);
    }

    @Override
    public void delete(int id) {
        productDAO.delete(id);
    }

    @Override
    public List<Product> findTopSelling() {
        return productDAO.findTopSelling();
    }

    @Override
    public List<Product> findTopSellingOfSeller(int seller_id) {
        return productDAO.findTopSellingOfSeller(seller_id);
    }

    @Override
    public long count() {
        return productDAO.count();
    }

    @Override
    public List<Product> findAllByCategory(int Id)
    {
        return productDAO.findAllByCategory(Id);
    }


    @Override
    public List<Product> getNext3Product(int amount) {
        return productDAO.getNext3Product(amount);
    }

    @Override
    public List<Product> getTop3Product() {
        return productDAO.getTop3Product();
    }

    @Override
    public List<Product> searchByProductName(String txtSearch){return productDAO.searchByProductName(txtSearch);
    }
}
