package com.LGD.test;

import com.LGD.dao.OrderDao;
import com.LGD.dao.impl.OrderDaoImpl;
import com.LGD.pojo.Order;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;

public class OrderDaoTest {

    @Test
    public void saveOrder() {

        OrderDao orderDao = new OrderDaoImpl();

        orderDao.saveOrder(new Order("2",new Date(),new BigDecimal(100),0, 1));

    }
}