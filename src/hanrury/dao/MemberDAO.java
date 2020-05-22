package hanrury.dao;

import hanrury.vo.BoardVO;
import hanrury.vo.MemberVO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
    //데이터베이스 접속 정보
    private String DRV="org.mariadb.jdbc.Driver";
    private String URL="jdbc:mariadb://hanrury.ce7yqoqfxxnd.ap-northeast-2.rds.amazonaws.com:3306/bigdata";
    private String USR="bigdata";
    private String PWD="bigdata2020";

    //게시판데이터를 CRUD 하기 위한 질의문
    private String insertSQL="insert into member (name,userid,passwd,jumin,zipcode,addr1,addr2,email,mobile) values (?,?,?,?,?,?,?,?,?);";
    private String selectSQL="select bno,title,userid,regdate,thumbup,views from board ORDER BY mno DESC ";
    private String selectOneSQL="select * from board where mno = ?;";
    private String updateSQL="";
    private String deleteSQL="";

    //게시판 데이터를 board 테이블에 저장
    public boolean insertMember(MemberVO m) {
        Connection conn=null;
        PreparedStatement pstmt =null;
        boolean isInsert = false;
        try{
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL,USR,PWD);
            pstmt =conn.prepareStatement(insertSQL);
            pstmt.setString(1,m.getName());
            pstmt.setString(2,m.getUserid());
            pstmt.setString(3,m.getPasswd());
            pstmt.setString(4,m.getJumin());
            pstmt.setString(5,m.getZipcode());
            pstmt.setString(6,m.getAddr1());
            pstmt.setString(7,m.getAddr2());
            pstmt.setString(8,m.getEmail());
            pstmt.setString(9,m.getMobile());
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
    public ArrayList<MemberVO> selectMember() {
        ArrayList<MemberVO>mlist= new ArrayList<>();
        Connection conn=null;
        PreparedStatement pstmt= null;
        ResultSet rs= null;

        try{
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL,USR,PWD);
            pstmt =conn.prepareStatement(selectSQL);
            rs=pstmt.executeQuery();

            while(rs.next()){
                MemberVO m= new MemberVO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)
                        );
                mlist.add(m);
            }

        }catch (Exception ex){
            ex.printStackTrace();
        }finally {
            if(pstmt != null) try{ pstmt.close();}catch (Exception ex){}
            if(conn != null) try{ conn.close();}catch (Exception ex){}
            if(rs != null) try{ rs.close();}catch (Exception ex){}
        }
        return mlist;
    }

    //글번호로 선택한 게시물에 대해 모든 컬럼을 조호회해서 boardvo 객체에 저장하고 반환함
    public MemberVO selectOneMember(String mno) {
        MemberVO m = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL,USR,PWD);
            pstmt = conn.prepareStatement(selectOneSQL);
            pstmt.setString(1,mno);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                m = new MemberVO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(pstmt != null) try{ pstmt.close();}catch (Exception ex){}
            if(conn != null) try{ conn.close();}catch (Exception ex){}
            if(rs != null) try{ rs.close();}catch (Exception ex){}
        }
        return m;
    }
}
