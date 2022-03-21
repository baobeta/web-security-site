package com.motor.dao.impl;

import com.motor.dao.IOrderDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.OrderMapper;
import com.motor.mapper.UserMapper;
import com.motor.model.Order;
import com.motor.model.User;

import java.util.List;

public class OrderDAOImpl extends AbstractDAO<Order> implements IOrderDAO {
    @Override
    public List<Order> findAll() {
        String sql = "select * from Orders";
        return query(sql, new OrderMapper());
    }

    @Override
    public List<Order> findAllBySeller(int seller_id) {
        String sql = "select * from Orders where seller_id = ?";
        return query(sql, new OrderMapper(), seller_id);
    }

    @Override
    public Order findOne(int id) {
        String sql = "select * from Orders where id = ?";
        List<Order> order = query(sql, new OrderMapper(), id);
        return order.isEmpty() ? null : order.get(0);
    }

    @Override
    public void updateStatus(Order order) {
        String sql = "UPDATE [dbo].[Orders] SET [status] = ?  WHERE [id] = ?;";
        update(sql, order.getStatus(), order.getId());
    }

    @Override
    public long countAll() {
        String sql = "select count(id) from Orders";
        return get(sql);
    }

    @Override
    public long countNotCancelled() {
        String sql = "select count(id) from Orders WHERE status != 4";
        return get(sql);
    }

    @Override
    public int countBySeller(int seller_id) {
        String sql = "select count(id) from Orders where seller_id = ?";
        return count(sql, seller_id);
    }

    @Override
    public long orderMoneyTotal() {
        String sql = "select sum(a.total) as average\n" +
                "from (\n" +
                "\tselect a.id, cast(sum(a.money)as bigint) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*cast(unit_price as bigint)  as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status!=4)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a";
        return get(sql);
    }

    @Override
    public long orderMoneyTotalBySeller(int seller_id) {
        String sql = "select sum(a.total) as average\n" +
                "from (\n" +
                "\tselect a.id, cast(sum(a.money)as bigint) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*cast(unit_price as bigint)  as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.seller_id=? and o.status!=4)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a";
        return get(sql, seller_id);
    }

    @Override
    public long orderMoneyAveragesBySeller(int seller_id) {
        String sql = "select AVG(a.total) as average\n" +
                "from (\n" +
                "\tselect a.id, cast(sum(a.money)as bigint) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*cast(unit_price as bigint)  as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.seller_id=? and o.status!=4)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a\n";
        return get(sql, seller_id);
    }

    @Override
    public List<User> findTopCustomer() {
        String sql = "select top 7 u.id as id ,\n" +
                "\t'' as username, '' as password,\n" +
                "\tcast(count(o.id) as nvarchar) as mail , \n" +
                "\tcast(sum(b.total)as nvarchar) as phone,\n" +
                "\t0 as role_id, u.fullname as fullname, '' as image\n" +
                "from Users as u, Orders as o,\n" +
                "\t(\n" +
                "\tselect a.id, cast(sum(a.money)as bigint) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*cast(unit_price as bigint)  as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status!=4)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id\n" +
                "\t) as b\n" +
                "where u.id = o.customer_id and b.id=o.id\n" +
                "group by u.id, u.fullname\n" +
                "order by sum(b.total) desc";
        return query(sql, new UserMapper());
    }

    @Override
    public List<User> findUserBySeller(int seller_id) {
        String sql = "select top 7 u.id as id ,\n" +
                "\t'' as username, '' as password,\n" +
                "\tcast(count(o.id) as nvarchar) as mail , \n" +
                "\tcast(sum(b.total)as nvarchar) as phone,\n" +
                "\t0 as role_id, u.fullname as fullname, '' as image\n" +
                "from Users as u, Orders as o,\n" +
                "\t(\n" +
                "\tselect a.id, cast(sum(a.money)as bigint) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*cast(unit_price as bigint)  as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.seller_id=? and o.status!=4)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id\n" +
                "\t) as b\n" +
                "where u.id = o.customer_id and b.id=o.id\n" +
                "group by u.id, u.fullname\n" +
                "order by sum(b.total) desc";
        return query(sql, new UserMapper(), seller_id);
    }

    @Override
    public long getRevenueInMonth(int month, int year) {
        String sql = "select sum(a.total) as average\n" +
                "from (\n" +
                "\tselect cast(sum(a.money)as bigint) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*cast(unit_price as bigint) as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status!=4\n" +
                "\t\tand MONTH(o.buy_date) = ? and YEAR(o.buy_date) = ?)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a";
        return get(sql, month, year);
    }

    @Override
    public long getRevenueBySellerInMonth(int seller_id, int month, int year) {
        String sql = "select sum(a.total) as average\n" +
                "from (\n" +
                "\tselect cast(sum(a.money)as bigint) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*cast(unit_price as bigint) as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status!=4\n" +
                "\t\tand o.seller_id=? and MONTH(o.buy_date) = ? and YEAR(o.buy_date) = ?)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a";
        return get(sql, seller_id, month, year);
    }

    @Override
    public int countOrderInMonth(int month, int year) {
        String sql = "select COUNT(id) as soluong\n" +
                "from Orders \n" +
                "where status!=4   \n" +
                "\tand  MONTH(buy_date) = ? and YEAR(buy_date) = ?";
        return count(sql, month, year);
    }

    @Override
    public int countOrderBySellerInMonth(int seller_id, int month, int year) {
        String sql = "select COUNT(id) as soluong\n" +
                "from Orders \n" +
                "where status!=4  and seller_id= ? \n" +
                "\tand  MONTH(buy_date) = ? and YEAR(buy_date) = ?";
        return count(sql, seller_id, month, year);
    }
    @Override
    public void insert(Order order) {
        String sql = "INSERT INTO [dbo].[Orders] ( [customer_id], [buy_date], [seller_id], [phone], [address], [receiver], [pay_id], [status]) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?);";
        insert(sql, order.getCustomer_id(), order.getBuy_date(), order.getSeller_id(),
                order.getPhone(), order.getAddress(), order.getReceiver(), order.getPay_id(),
                order.getStatus());
    }
    @Override
    public List<Order> findAllByUser(int id) {
        String sql = "select * from Orders where customer_id = ?";
        return query(sql, new OrderMapper(), id);
    }
    @Override
    public long getLastId() {
        String sql = "select top 1 id from Orders order by id DESC;" ;
        return get(sql);
    }

}
