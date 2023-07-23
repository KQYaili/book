package com.LGD.service;

import com.LGD.pojo.Cart;
import com.LGD.pojo.Order;
import com.LGD.pojo.OrderItem;

import java.util.List;

public interface OrderService {
    String createOrder(Cart car,Integer userId);
    List<Order> queryOrders(Integer userId);
    List<OrderItem> queryOrderItemsByOrderId(String orderId);
    List<Order> queryAll();

    Order queryOrderByOrderId(String orderId);

    void sendOrder(String orderId);
    void receiveOrder(String orderId);
}
