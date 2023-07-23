package com.LGD.filter;


import com.LGD.utils.JdbcUtils;

import javax.servlet.*;
import java.io.IOException;

public class TransactionFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        try {
            filterChain.doFilter(servletRequest,servletResponse);
            JdbcUtils.commitAndClose();// �ύ����
        } catch (Exception e) {
            JdbcUtils.rollbackAndClose();//�ع�����
            e.printStackTrace();
            throw new RuntimeException(e);//���쳣�׸�Tomcat����չʾ�ѺõĴ���ҳ��
        }
    }

    @Override
    public void destroy() {

    }
}
