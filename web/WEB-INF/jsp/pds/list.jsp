<%@page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../bs4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../fa47/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/semiproject.css">
    <title>bootstrap 4 - pds/list1</title>
    <style>

    </style>
</head>
<body>
<base href="http://localhost:8080">
<div class="container">
    <%@ include file="../layout/header.jsp"%>

    <!--메인영역 시작-->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-upload fa-2x"> 자료실</i>
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
                    <tr><td>1</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>2</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>3</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>4</td><td><a href="view1.html">안녕하세욧~</a>
                        <span class="badge badge-warning">Hot</span></td><td>arong2</td><td>2020.08.15</td><td>100</td><td>888</td></tr>
                    <tr><td>5</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>6</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>7</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>8</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>9</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
                    <tr><td>10</td><td><a href="view1.html">안녕하세요~</a></td><td>arong2</td><td>2020.08.15</td><td>10</td><td>128</td></tr>
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

    <%@ include file="../layout/footer.jsp"%>

</div>


<!--로그인 모달 시작-->
<div class="modal fade" role="dialog" id="loginmodal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">로그인</h3>
                <button class="btn btn-light" type="button"
                        data-dismiss="modal">닫기</button>
            </div>
            <div class="modal-body">
                <form id="loginfrm">
                    <div class="form-group row text-center">
                        <label for="uid" class="col-form-label col-4">아이디</label>
                        <input type="text" id="uid" class="form-control col-6">
                    </div>
                    <div class="form-group row text-center">
                        <label for="pwd" class="col-form-label col-4">비밀번호</label>
                        <input type="password" id="pwd" class="form-control col-6">
                    </div>
                    <div class="form-group row text-center">
                        <div class="col-4"></div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input">
                            <label class="form-check-label">로그인 상태 유지</label>
                        </div>
                    </div>
                </form>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary offset-4">로그인</button>
                    <button type="reset" class="btn btn-secondary" style="margin-left: 5px;">아이디/비밀번호 찾기</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--로그인 모달 끝-->




<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="../bs4/js/bootstrap.min.js"></script>
</body>
</html>