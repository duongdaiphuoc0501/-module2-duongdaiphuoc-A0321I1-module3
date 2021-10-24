package model.reponsitory;

import model.bean.User;

import java.sql.SQLException;
import java.util.List;

public interface UserReponsitoryInterface {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public User getUserById(int id);

    public void insertUserStore(User user) throws SQLException;
    public void addUserTransaction(User user, int[] permision);

    public boolean updateUser(User user) throws SQLException;
    public List<User> selectProductByCountry(String country);
}
