<%@page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../bs4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../fa47/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/semiproject.css">
    <title>bootstrap 4 - pds/write1</title>
    <style>

    </style>
</head>
<body>
<base href="http://localhost:8080">
<div class="container">
    <%@ include file="../layout/header.jsp"%>
    <%--JSP파일이 요청되면 JSP컨테이너(WAS)에 의해 JSP 파일이 서블릿파일(JAVA)로 변환되고,--%>
    <%--변환된 파일이 클래스로 컴파일된 후 실행한 후--%>
    <%--결과가 클라이언트로 응답으로 전달되는 구조--%>
    <%--INCLUDE 지시문을 사용하면, 서블릿파일로 변환하기 전에 특정영역에 포함(include)시킬 파일의 내용을 삽입함--%>

    <!--메인영역 시작-->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-upload fa-2x"> 자료실</i>
            <hr>
        </div> <!--타이틀-->


        <div class="row margin1050">
            <div class="col-6">
                <h4><i class="fa fa-plus-circle"></i>새글쓰기</h4>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd" class="btn btn-light" style="margin-right: -15px;">
                    <i class="fa fa-plus-circle"></i> 목록으로
                </button>
            </div>
        </div><!--버튼들-->

        <div class="row margin1050">
            <form class="card card-body bg-light">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">제목</label>
                    <input type="text" id="title" class="form-control col-9">
                </div><!--제목-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">작성자</label>
                    <input type="text" id="userid" name="userid" class="form-control col-9 readonly">
                </div><!--작성자 (실제로는 안씀)-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">본문내용</label>
                    <textarea id="contents" name="contents" rows="15" class="form-control col-9"></textarea>
                </div><!--본문내용-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">자동입력 방지</label>
                    <img src="../img/google_recaptcha.gif" width="50%" height="50%" style="margin-left: -5px;">
                </div><!--자동입력방지-->

                <div></div><!--첨부하기-->

                <div class="row justify-content-center" style="margin-top: 85px;">
                    <hr style="width: 90%;color: gray;">
                    <button type="button" class="btn btn-primary" style="margin-right: 10px;">
                        <i class="fa fa-check"></i> 입력완료
                    </button>
                    <button type="button" class="btn btn-danger">
                        <i class="fa fa-remove"></i> 취소하기
                    </button>
                </div><!--버튼-->

            </form>
        </div><!--새글쓰기 폼-->

    </div>
    <!--메인영역 끝-->



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