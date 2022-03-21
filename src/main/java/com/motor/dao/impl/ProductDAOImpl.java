package com.motor.dao.impl;

import com.motor.dao.IProductDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.ProductMapper;
import com.motor.model.Product;

import java.util.List;

public class ProductDAOImpl extends AbstractDAO<Product> implements IProductDAO {
    @Override
    public List<Product> findAll() {
        String sql = "select * from Products";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<Product> findAllBySeller(int userId) {
        String sql = "select * from Products where seller_id = ?";
        return query(sql, new ProductMapper(), userId);
    }
    @Override
    public List<Product> getTop3Product(){

        String sql = "select TOP 3 * from Products order by id DESC";

        return query(sql, new ProductMapper());
    }
    @Override
    public List<Product> getNext3Product(int amount) {

        String sql = "SELECT *  FROM Products ORDER BY id OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";

        return  query(sql, new ProductMapper(), amount);
    }
    @Override
    public List<Product> findAllByCategory(int Id) {
        String sql = "select * from Products where category_id = ?";
        return query(sql, new ProductMapper(), Id);
    }
    @Override
    public Product findOne(int id) {
        String sql = "select * from Products where id = '" + String.valueOf(id) + "'";
        List<Product> products = query(sql, new ProductMapper());
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public Product findOneById(String id) {
        String sql = "select * from Products where id = '" + id + "'";
        List<Product> products = query(sql, new ProductMapper());
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public Long insert(Product product) {
        String sql = "INSERT INTO [dbo].[Products] ( [name], [price], [description], [image], [category_id], [seller_id], [amount], [status], [brand_id]) " +
                "VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        return insert(sql, product.getName(), product.getPrice(), product.getDescription(),
                product.getImage(), product.getCategory_id(), product.getSeller_id(), product.getAmount(),
                product.getStatus(), product.getBrand_id());
    }

    @Override
    public void update(Product product) {
        String sql = "UPDATE [dbo].[Products] SET [name] = ?, [price] = ?, [description] =  ?, " +
                "[image] = ?, [category_id] = ?, [seller_id] = ?, [amount] = ?, [status] = ?, " +
                "[brand_id] = ? WHERE [id] = ?;";
        update(sql, product.getName(), product.getPrice(), product.getDescription(),
                product.getImage(), product.getCategory_id(), product.getSeller_id(), product.getAmount(),
                product.getStatus(), product.getBrand_id(), product.getId());
    }

    @Override
    public void updateStatus(Product product) {
        String sql = "UPDATE [dbo].[Products] SET [status] = ?  WHERE [id] = ?;";
        update(sql, product.getStatus(), product.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM Products WHERE id = ?";
        update(sql, id);
    }

    @Override
    public List<Product> findTopSelling() {
        String sql = "select top 7 p.id as id, p.name as name, p.price as price, \n" +
                "\tp.description as description,\n" +
                "\tp.image as image,\n" +
                "\tp.category_id as category_id,\n" +
                "\tp.seller_id as seller_id,\n" +
                "\tsum(OD.quantity) as amount,\n" +
                "\tp.status as status,\n" +
                "\tp.brand_id as brand_id\n" +
                "from Products as P, OrderDetails as OD, Orders as o\n" +
                "where P.id=OD.product_id and o.status!=4 \n" +
                "\tand o.id = OD.order_id \n" +
                "group by p.id, p.name, p.price, \n" +
                "\tp.description, p.image, p.category_id,\n" +
                "\tp.status, p.brand_id, p.seller_id\n" +
                "order by sum(OD.quantity) desc, p.price desc";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<Product> findTopSellingOfSeller(int seller_id) {
        String sql = "select top 7 p.id as id, p.name as name, p.price as price, \n" +
                "\tp.description as description,\n" +
                "\tp.image as image,\n" +
                "\tp.category_id as category_id,\n" +
                "\tp.seller_id as seller_id,\n" +
                "\tsum(OD.quantity) as amount,\n" +
                "\tp.status as status,\n" +
                "\tp.brand_id as brand_id\n" +
                "from Products as P, OrderDetails as OD, Orders as o\n" +
                "where P.id=OD.product_id and o.status!=4 \n" +
                "\tand o.id = OD.order_id and o.seller_id=? \n" +
                "group by p.id, p.name, p.price, \n" +
                "\tp.description, p.image, p.category_id,\n" +
                "\tp.status, p.brand_id, p.seller_id\n" +
                "order by sum(OD.quantity) desc, p.price desc";
        return query(sql, new ProductMapper(), seller_id);
    }

    @Override
    public long count() {
        String sql = "select COUNT(id) from Products";
        return get(sql);
    }

    @Override
    public List<Product> searchByProductName(String txtSearch){

        String sql = "select * from Products where name like ?";

        return query(sql, new ProductMapper(), "%" + txtSearch + "%");

    }
}
