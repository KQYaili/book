package com.LGD.dao;

import com.LGD.pojo.OrderItem;
import java.util.List;

public interface OrderItemDao {
    int saveOrderItem(OrderItem orderItem);
    List<OrderItem> queryOrderItemsByOrderId(String orderId);

}