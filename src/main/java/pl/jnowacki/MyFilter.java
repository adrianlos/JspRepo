package pl.jnowacki;

import javax.servlet.*;
import java.io.IOException;

public class MyFilter implements Filter {


    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("before servlet from old filter");

        chain.doFilter(request, response);

        System.out.println("after servlet from old filter");
    }
}
