package model.repositories;

import model.bean.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();

    void save(Product product);

    void delete(int id);

    Product findById(int id);
}
