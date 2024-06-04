/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author LAPTOP ASUS
 */
public class homepageDAO extends DBContext {

    // Lay tat ca Category
    public List<Category> getAllCategory() {
        String sql = "SELECT * FROM category";
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException e) {
            System.out.println("SQL error: " + e);
        }
        return list;
    }

    //lay 8 san pham apple
    public List<Product> getNewApple() {
        String sql = "SELECT TOP 8 * \n"
                + "FROM product \n"
                + "WHERE brandID = 1 \n"
                + "ORDER BY release_date DESC;";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(5),
                        rs.getDate(4),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Print stack trace to understand the issue
        }
        return list;

    }

    //lay 8 san pham samsung
    public List<Product> getNewSamsung() {
        String sql = "SELECT TOP 8 * \n"
                + "FROM product \n"
                + "WHERE brandID = 2 \n"
                + "ORDER BY release_date DESC;";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(5),
                        rs.getDate(4),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (SQLException e) {
        }
        return list;

    }

    //lay 9 san pham laptop gaming
    public List<Product> getProductGaming() {
        String sql = "SELECT TOP 9 *\n"
                + "FROM product\n"
                + "WHERE categoryID = 2\n";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(5),
                        rs.getDate(4),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (SQLException e) {
        }
        return list;

    }

    //search theo ten
    public List<Product> searchByName(String name) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + name + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(5),
                        rs.getDate(4),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }

        } catch (SQLException e) {
        }

        return list;
    }

    public Product getProductByID(String id) {
        String sql = "select * from Products where product_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(5),
                        rs.getDate(4),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
            }
        } catch (SQLException e) {
        }
        return null;

    }

    public List<Product> getAllProduct() {
        String sql = "select * from Products";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(5),
                        rs.getDate(4),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (SQLException e) {
        }
        return list;

    }

    public static void main(String[] args) {
        homepageDAO dao = new homepageDAO();
        List<Product> list = dao.searchByName("iphone");
        for (Product p : list) {
            System.out.println(p);
        }
    }

}
