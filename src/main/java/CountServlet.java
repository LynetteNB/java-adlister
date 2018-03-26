import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name="CountServlet", urlPatterns="/count")
public class CountServlet extends HttpServlet {
    private static int count = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String reset = req.getParameter("reset");
        if(reset != null && reset.equalsIgnoreCase("reset")) {
            count = 0;
        } else {
            count ++;
        }
        out.println("<h1>" + count + "</h1>");
        out.println("<form>");
        out.println("<input name = 'reset' value='Reset' type='submit'>");
        out.println("</form>");
    }
}
