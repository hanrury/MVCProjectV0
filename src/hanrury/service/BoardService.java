package hanrury.service;

import hanrury.dao.BoardDAO;
import hanrury.vo.BoardVO;

import java.util.ArrayList;

/**
 * Created by tjoeun on 2020-05-18.
 */
public class BoardService {
    private BoardVO bd;

    public void setBd(BoardVO bd) {
        this.bd = bd;
    }

    private BoardDAO bddao;

    public BoardService(){
        bddao=new BoardDAO();
    }

    //성적데이터 저장
    public String getNewBoard(){
        String result="데이터 입력 실패!";

        if(bddao.insertBoard(bd))
            result="데이터 입력 성공!";

        System.out.println(result);
        //result 변수 값을 was 콘솔에 로그형태로 출력
        return result;
    }
    //성적데이터 리스트 출력
    public ArrayList<BoardVO> getShowBoard(){
        return bddao.selectBoard();
    }
}
