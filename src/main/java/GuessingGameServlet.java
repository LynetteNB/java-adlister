import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessingGameServlet", urlPatterns="/guess")
public class GuessingGameServlet extends HttpServlet {
    int randomNum = (int) Math.floor(Math.random()*100);
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int num = Integer.parseInt(request.getParameter("num"));
        String message="";
        if(num == randomNum){
            message = "You guessed correctly! The number is " + randomNum + "!";
        } else if (num < randomNum){
            message = num + " is too low!";
        } else if (num > randomNum){
            message = num + " is too high!";
        }
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/guessingMessage.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reset = request.getParameter("reset");
        if(reset != null && reset.equals("Reset Random Number?")){
            randomNum = (int) Math.floor(Math.random()*100);
        }
        request.getRequestDispatcher("/WEB-INF/guessNumber.jsp").forward(request, response);
    }
}
