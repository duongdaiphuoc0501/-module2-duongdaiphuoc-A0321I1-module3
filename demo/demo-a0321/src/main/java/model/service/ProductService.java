package model.service;

import model.bean.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void create(Product product);

    void delete(int id);

    Product findById(int id);
}
