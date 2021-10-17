package model.reponsitory;

import model.bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductReponstoryImpl implements ProductRepository{
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "IPhone", 25500000, "12/12/2020", "iphone.jpg", "USA"));
        products.put(2, new Product(2, "SamSung", 7500000, "20/05/2015", "samsung.jpg", "China"));
        products.put(3, new Product(3, "Nokia", 1050300, "06/01/2014", "nokia.jpg", "Japan"));
        products.put(4, new Product(4, "Oppo", 15050000, "18/07/2014", "oppo.jpg", "VN"));
        products.put(5, new Product(5, "Xiaomi", 6300000, "20/03/2018", "xiaomi.jpg", "Philip"));
        products.put(6, new Product(6, "BPhone", 4590000, "16/05/2017", "bphone.jpg", "Mexico"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void show(int id) {
        products.get(id);
    }
}
