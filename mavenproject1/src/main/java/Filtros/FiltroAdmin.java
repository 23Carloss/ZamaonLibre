/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Filtros;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
@WebFilter("/admin/*")
public class FiltroAdmin implements Filter {

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) sr;
        
        HttpSession sesion = request.getSession(false);
        if(sesion == null || sesion.getAttribute("admin") == null){
            ((HttpServletResponse) sr1).sendRedirect("logIn.jsp");
        }
        else{
            fc.doFilter(sr, sr1);
        }
        
    }

}
