package model;

import controller.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomersServlet", urlPatterns = "/customer")
public class CustomersServlet extends HttpServlet {
    private static List<Customer> customerList;

    @Override
    public void init() throws ServletException {
        super.init();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        customerList = new ArrayList<>();
        customerList.add(new Customer("Mai Văn Hoàn", "Quảng Nam","1983-08-20", ""));
        customerList.add(new Customer("Nguyễn Văn Nam", "Đà Nẵng","1983-08-21", ""));
        customerList.add(new Customer("Nguyễn Thái Hòa", "Quảng Ngãi","1983-08-22", ""));
        customerList.add(new Customer("Trần Đăng Khoa", "Huế","1983-08-17", ""));
        customerList.add(new Customer("Nguyễn Đình Thi", "Bình Định","1983-08-19", ""));
        request.setAttribute("customersList", customerList);
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }
}
