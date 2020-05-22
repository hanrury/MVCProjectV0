<%@page pageEncoding="utf-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <!--메인영역 시작-->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-comments fa-2x"> 자유 게시판</i>
            <hr>
        </div> <!--타이틀-->


        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="prevbd" class="btn btn-light" style="margin-left: -15px;">
                    <i class="fa fa-chevron-left"></i> 이전게시물
                </button>
                <button type="button" id="nextbd" class="btn btn-light">
                    <i class="fa fa-chevron-right"></i> 다음게시물
                </button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="newbd" class="btn btn-light" style="margin-right: -15px;">
                    <i class="fa fa-plus-circle"></i> 새글쓰기
                </button>
            </div>
        </div><!--버튼들-->

        <div class="row margin1050">
            <table>
                <tr>
                    <th colspan="2" style="border-bottom: 3px solid black; background: whitesmoke">
                        <h3> ${b.title}</h3></th>
                </tr>
                <tr style="background: lightgray">
                    <td class="text-left">${b.userid}</td>
                    <td class="text-right">${fn:substring(b.regdate,0,10)}  / ${b.views} / ${b.thumbup}</td>
                </tr>
                <tr style="background: whitesmoke;">
                    <td colspan="2" style="border-bottom: 3px solid black;" class="text-left">
                        <p>${b.contents}
                        </p>
                    </td>
                </tr>
            </table>
        </div><!--본문-->

        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="updbd" class="btn btn-warning" style="margin-left: -15px;">
                    <i class="fa fa-pencil"></i> 수정하기
                </button>
                <button type="button" id="delbd" class="btn btn-danger">
                    <i class="fa fa-trash-o"></i> 삭제하기
                </button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd" class="btn btn-light" style="margin-right: -15px;">
                    <a href="list1.html" class="page-link" style="color: black;">
                        <i class="fa fa-list"></i> 목록으로
                    </a>
                </button>
            </div>
        </div><!--버튼들-->

        <div class="row margin1050">
            <h3 style="margin-top: 45px;"><i class="fa fa-commenting"></i> ${b.title}</h3>
            <table class="table" style="border-top: 3px solid black; border-bottom: 3px solid black;">
                <tr>
                    <td style="width: 25%;"><h4>${b.userid}</h4></td>
                    <td><div style="background: yellow; padding: 5px;">${b.regdate} / ${b.views} / ${b.thumbup}</div>
                        <p style="padding: 5px;">ㅇㄹㅇ ㄱㅇㅇ ㅇㅈ? ㅇ ㅇㅈ</p>

                        <ul class="list-unstyled"><!--댓글의 댓글 시작-->
                            <li>
                                <div style="background: greenyellow; padding: 5px;">
                                    <span><b>tunarong</b></span>
                                    <span style="float:right;">2018-08-15 20:25:25</span></div>
                                <p style="padding: 5px;">아롱아 밥먹어라 왈왈</p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;"><h4>arong2</h4></td>
                    <td><div>2018-08-15 20:20:20</div>
                        <p>ㅇㄹㅇ ㄱㅇㅇ ㅇㅈ? ㅇ ㅇㅈ</p>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;"><h4>arong2</h4></td>
                    <td><div>2018-08-15 20:20:20</div>
                        <p>ㅇㄹㅇ ㄱㅇㅇ ㅇㅈ? ㅇ ㅇㅈ</p>
                    </td>
                </tr>
            </table>
        </div><!--댓글쓰기-->

        <div class="row margin1050">
            <form class="card card-body bg-light" style="margin: 30px 0;">
                <div class="form-group row">
                    <label style="margin:auto;">로그인하세요</label>
                    <textarea id="comment" rows="10" class="form-control col-7"></textarea>
                    <button type="button" id="bdcmt" class="btn btn-secondary" style="margin: auto;">
                        <i class="fa fa-commenting"></i> 댓글 쓰기
                    </button>
                </div>
            </form>
        </div><!--댓글쓰기-->


    </div>
    <!--메인영역 끝-->