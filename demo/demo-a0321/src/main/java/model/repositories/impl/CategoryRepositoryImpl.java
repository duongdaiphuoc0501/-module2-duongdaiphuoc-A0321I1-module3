package model.repositories.impl;

import model.bean.Category;
import model.bean.Product;
import model.repositories.CategoryRepository;
import model.repositories.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepositoryImpl implements CategoryRepository {

    private static final String SELECT_ALL_CATEGORY = "SELECT * FROM democ07.category;";
    @Override
    public List<Category> findALl() {
        Connection connection = DBConnection.getConnection();
        List<Category> list = new ArrayList<>();
        if (connection != null) {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int idCategory = resultSet.getInt("id_category");
                    String nameCategory = resultSet.getString("name_category");
                    list.add(new Category(idCategory, nameCategory));
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
}
