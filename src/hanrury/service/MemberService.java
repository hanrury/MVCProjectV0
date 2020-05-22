package hanrury.service;

import hanrury.dao.MemberDAO;
import hanrury.vo.MemberVO;

import java.util.ArrayList;

public class MemberService {
    private MemberVO m;

    public void setm(MemberVO m) {
        this.m = m;
    }

    private MemberDAO mdao;

    public MemberService(){
        mdao = new MemberDAO();
    }

    //성적데이터 저장
    public String getNewMember(){
        String result="데이터 입력 실패!";

        if(mdao.insertMember(m))
            result="데이터 입력 성공!";

        System.out.println(result);
        //result 변수 값을 was 콘솔에 로그형태로 출력
        return result;
    }
    //성적데이터 리스트 출력
    public ArrayList<MemberVO> getShowMember(){

        return mdao.selectMember();
    }


public String newMember(MemberVO m) {
    String result ="회원가입 실패";

    if(mdao.insertMember(m))
        result = "회원가입성공";

    System.out.println(result);

    return result;
    }
}