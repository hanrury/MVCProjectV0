package hanrury.mvc.action;

import hanrury.service.BoardService;
import hanrury.vo.BoardVO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardWriteHandler implements ActionHandler {

    // 클라이언트의 요청이 /index.do라면 /web-inf/views 아래의 write.jsp 출력
    // 클라이언트의 요청이 post라면 폼을 통해 전송된 데이터를 처리하고 board/


    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String viewPage ="1|/WEB-INF/jsp/layout/layout.jsp";


        if (req.getMethod().equalsIgnoreCase("post")) {
            req.setCharacterEncoding("utf-8");
            String title = req.getParameter("title");
            String userid = req.getParameter("userid");
            String contents = req.getParameter("contents");

            BoardVO b = new BoardVO(null,title,userid,null,null,null,contents);
            BoardService bdsrv = new BoardService();
            bdsrv.setBd(b);
            System.out.println(bdsrv.getNewBoard());

            viewPage = "2|/board/list.do";
        } else {
            req.setAttribute("action","../board/write.jsp");
        }

        // 결과를 viewPage에 출력하기 위해 request객체에 뭔가를 저장함
        System.out.println("BWHandler 호출");


        return viewPage;
    }



}