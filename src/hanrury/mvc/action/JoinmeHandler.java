package hanrury.mvc.action;

import hanrury.service.MemberService;
import hanrury.vo.MemberVO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class JoinmeHandler implements ActionHandler {

    // 클라이언트의 요청이 /index.do라면 /web-inf/views 아래의 index.jsp를 출력함


    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String viewPage = "1|/WEB-INF/jsp/layout/layout.jsp";

        if(req.getMethod().equalsIgnoreCase("post")) {
            req.setCharacterEncoding("utf-8");

        String name = req.getParameter("name");
        String jumin = req.getParameter("jumin1") + "-" + req.getParameter("jumin2");
        String userid = req.getParameter("uid");
        String passwd = req.getParameter("pwd");
        String zipcode = req.getParameter("zip1") + "-" + req.getParameter("zip2");
        String addr1 = req.getParameter("addr1");
        String addr2 = req.getParameter("addr2");
        String email = req.getParameter("email1") + "@" + req.getParameter("email2");
        String mobile = req.getParameter("hp1") + "-" + req.getParameter("hp2") + "-" + req.getParameter("hp3");

        MemberVO m = new MemberVO(null, name, jumin, userid, passwd, zipcode, addr1, addr2, email, mobile, null);

        MemberService msrv = new MemberService();
        msrv.newMember(m);
        System.out.println("JMHandler is here");

        viewPage = "2|/join/joinok.do";
    } else {
        req.setAttribute("action", "../join/joinme.jsp");
    }
        return viewPage;

    }

}