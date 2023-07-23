package com.LGD.dao;

import com.LGD.pojo.Order;

import java.util.List;

public interface OrderDao {
    int saveOrder(Order order);
    List<Order> queryAllOrder(Integer userId);
    List<Order> queryAllOrders();

    Order queryOrderByOrderId(String orderId);

    void sendOrder(String orderId);
    void receiveOrder(String orderId);
}
