package Controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import Models.Ad;
import Models.DaoFactory;

@WebServlet(name = "AdServlet", urlPatterns="/ads/show")
public class AdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().all().get(id-1);
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/Ads/show.jsp").forward(request, response);
    }
}
