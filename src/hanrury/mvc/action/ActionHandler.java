package hanrury.mvc.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface ActionHandler {
    String execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException;

}