package hanrury.mvc.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AgreeHandler implements ActionHandler {

    // 클라이언트의 요청이 /join/agree.do라면 /web-inf/jsp 아래의 join/agree.jsp를 출력함


    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String viewPage ="1|/WEB-INF/jsp/layout/layout.jsp";


        // 결과를 viewPage에 출력하기 위해 request객체에 뭔가를 저장함
        req.setAttribute("action","../join/agree.jsp");

        return viewPage;
    }



}