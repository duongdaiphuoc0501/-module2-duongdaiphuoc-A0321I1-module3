package model.repositories.impl;

import model.bean.Product;
import model.repositories.DBConnection;
import model.repositories.ProductRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository {

    private static final String SELECT_ALL_PRODUCT = "SELECT * FROM product \n" +
            "inner join category on category.id_category = product.id_category;";
    private static final String INSERT_PRODUCT = "INSERT INTO `democ07`.`product` (`name_product`, `price`, `status`, `id_category`) " +
            "VALUES (?,?,?,?);";

    @Override
    public List<Product> findAll() {
        Connection connection = DBConnection.getConnection();
        List<Product> list = new ArrayList<>();
        if (connection != null) {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int idProduct = resultSet.getInt("id_product");
                    String nameProduct = resultSet.getString("name_product");
                    double price = resultSet.getDouble("price");
                    boolean status = resultSet.getBoolean("status");
                    int idCategory = resultSet.getInt("id_category");
                    String nameCategory = resultSet.getString("name_category");
                    list.add(new Product(idProduct, nameProduct, price, status, idCategory, nameCategory));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
        return list;
    }

    @Override
    public void save(Product product) {
        Connection connection = DBConnection.getConnection();
        if (connection != null) {
                try {
                    PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT);
                    preparedStatement.setString(1, product.getNameProduct());
                    preparedStatement.setDouble(2, product.getPrice());
                    preparedStatement.setBoolean(3, product.isStatus());
                    preparedStatement.setInt(4, product.getIdCategory());
                    preparedStatement.executeUpdate();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }finally {
                    try {
                        connection.close();
                    } catch (SQLException throwables) {
                        throwables.printStackTrace();
                    }
                }
        }
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }
}
