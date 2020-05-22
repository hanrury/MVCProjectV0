package hanrury.mvc.action;

import hanrury.service.BoardService;
import hanrury.vo.BoardVO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class BoardListHandler implements ActionHandler {

    // 클라이언트의 요청이 /index.do라면 /web-inf/views 아래의 index.jsp를 출력함


    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String viewPage ="1|/WEB-INF/jsp/layout/layout.jsp";

        BoardService bdsrv = new BoardService();
        ArrayList<BoardVO> bdlist = bdsrv.getShowBoard();

        req.setAttribute("bdlist",bdlist);
        req.setAttribute("action","../board/list.jsp");

        return viewPage;
    }



}