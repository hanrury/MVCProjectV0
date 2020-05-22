<%@page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <!--메인영역 시작-->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-comments fa-2x"> 자유 게시판</i>
            <hr>
        </div> <!--타이틀-->

        <div class="row margin1050">
            <div class="col-12 text-right">
                <button type="button" id="newbd" class="btn btn-secondary">
                    <i class="fa fa-plus-circle"></i> 새글쓰기
                </button>
            </div>
        </div><!--버튼-->

        <div class="row margin1050">
            <div class="col-12">
                <table class="table table-striped makeline" style="margin: 10px 0;">
                    <thead class="thead-light">
                    <tr><th style="width: 7%;">번호</th>
                        <th>제목</th>
                        <th style="width: 12%;">작성자</th>
                        <th style="width: 10%;">작성일</th>
                        <th style="width: 7%;">추천</th>
                        <th style="width: 7%;">조회</th></tr>
                    </thead><!--테이블 제목행-->
                    <tbody>
                    <tr><th>공지</th><th><span class="badge badge-danger">Hot</span> 도배 금지!</th>
                        <th>운영자</th><th>2012.07.15</th><th>10</th><th>128</th></tr>
                    <c:forEach var="b" items="${bdlist}">
                        <tr>
                            <td>${b.bno}</td>
                            <td><a href="board/view.do?bno=${b.bno}">${b.title}</a> </td>
                            <td>${b.userid}</td>
                            <td>${fn:substring(b.regdate,0,10)}</td>
                            <td>${b.thumbup}</td>
                            <td>${b.views}</td>
                        </tr>
                    </c:forEach>

                    </tbody><!--테이블 본문행-->

                </table>
            </div>
        </div><!--게시판 목록-->


        <div class="row margin1050">
            <div class="col-12">
                <nav class="">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled"><a href="#" class="page-link">이전</a></li>
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">6</a></li>
                        <li class="page-item"><a href="#" class="page-link">7</a></li>
                        <li class="page-item"><a href="#" class="page-link">8</a></li>
                        <li class="page-item"><a href="#" class="page-link">9</a></li>
                        <li class="page-item"><a href="#" class="page-link">10</a></li>
                        <li class="page-item"><a href="#" class="page-link">다음</a></li>
                    </ul>
                </nav>
            </div>
        </div>

    </div><!--메인영역 끝-->
