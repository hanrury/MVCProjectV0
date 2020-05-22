package hanrury.dao;

import hanrury.vo.BoardVO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
    //데이터베이스 접속 정보
    private String DRV="org.mariadb.jdbc.Driver";
    private String URL="jdbc:mariadb://hanrury.ce7yqoqfxxnd.ap-northeast-2.rds.amazonaws.com:3306/bigdata";
    private String USR="bigdata";
    private String PWD="bigdata2020";

    //게시판데이터를 CRUD 하기 위한 질의문
    private String insertSQL="insert into board (title,userid,contents) values (?,?,?);";
    private String selectSQL="select bno,title,userid,regdate,thumbup,views from board ORDER BY bno DESC ";
    private String selectOneSQL="select * from board where bno = ?;";
    private String updateSQL="";
    private String deleteSQL="";

    //게시판 데이터를 board 테이블에 저장
    public boolean insertBoard(BoardVO bd) {
        Connection conn=null;
        PreparedStatement pstmt =null;
        boolean isInsert = false;
        try{
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL,USR,PWD);
            pstmt =conn.prepareStatement(insertSQL);
            System.out.println(bd.getTitle()); // 테스트
            pstmt.setString(1,bd.getTitle());
            System.out.println(bd.getTitle()); // 테스트
            pstmt.setString(2,bd.getUserid());
            pstmt.setString(3,bd.getContents());
            int cnt = pstmt.executeUpdate();
            if(cnt>0)isInsert=true;

        }catch (Exception ex){
            ex.printStackTrace();
        }finally {

            if(pstmt != null) try{ pstmt.close();}catch (Exception ex){}
            if(conn != null) try{ conn.close();}catch (Exception ex){}
        }
        return isInsert;
    }

    //게시판 데이터 중에서 글번호/제목/작성자/작성일/추천/조회만
    //골라서 동적배열에 담아 반환함
    public ArrayList<BoardVO> selectBoard() {
        ArrayList<BoardVO>bdlist= new ArrayList<>();
        Connection conn=null;
        PreparedStatement pstmt= null;
        ResultSet rs= null;

        try{
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL,USR,PWD);
            pstmt =conn.prepareStatement(selectSQL);
            rs=pstmt.executeQuery();

            while(rs.next()){
                BoardVO bd= new BoardVO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        null);
                bdlist.add(bd);
            }

        }catch (Exception ex){
            ex.printStackTrace();
        }finally {
            if(pstmt != null) try{ pstmt.close();}catch (Exception ex){}
            if(conn != null) try{ conn.close();}catch (Exception ex){}
            if(rs != null) try{ rs.close();}catch (Exception ex){}
        }
        return bdlist;
    }

    //글번호로 선택한 게시물에 대해 모든 컬럼을 조호회해서 boardvo 객체에 저장하고 반환함
    public BoardVO selectOneBoard(String bno) {
        BoardVO bvo = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL,USR,PWD);
            pstmt = conn.prepareStatement(selectOneSQL);
            pstmt.setString(1,bno);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                bvo = new BoardVO(rs.getString(1),rs.getString(2),rs.getString(3),
                        rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(pstmt != null) try{ pstmt.close();}catch (Exception ex){}
            if(conn != null) try{ conn.close();}catch (Exception ex){}
            if(rs != null) try{ rs.close();}catch (Exception ex){}
        }
        return bvo;
    }
}
