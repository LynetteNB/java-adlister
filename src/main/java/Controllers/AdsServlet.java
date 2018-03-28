package Controllers;

import Models.Ad;
import Models.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/ads")
public class AdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/Ads/index.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> adList = DaoFactory.getAdsDao().all();
        String adTitle = request.getParameter("title");
        String adDescription = request.getParameter("description");
        Ad newAd = new Ad(adList.size(), 2, adTitle, adDescription);
        adList.add(newAd);
        request.setAttribute("ads", adList);
        request.getRequestDispatcher("/WEB-INF/Ads/index.jsp").forward(request, response);
    }
}
