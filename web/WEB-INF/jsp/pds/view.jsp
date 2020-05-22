<%@page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../bs4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../fa47/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/semiproject.css">
    <title>bootstrap 4 - pds/view1</title>
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
                        <h3>"AR 패션 아이템 만들어 순수익 월 300만원"</h3></th>
                </tr>
                <tr style="background: lightgray">
                    <td class="text-left">신문사</td>
                    <td class="text-right">2020.05.04</td>
                </tr>
                <tr style="background: whitesmoke;">
                    <td colspan="2" style="border-bottom: 3px solid black;" class="text-left">
                        <p>네이버가 만든 증강현실(AR) 아바타 서비스 '제페토'의 창작자 생태계가 활성화되고 있다.
                            자신을 대리하는 AR 아바타를 만들어 소셜 활동을 즐길 수 있는 제페토 내에서
                            이용자들이 AR 아바타 의상을 직접 만들어 판매하며 발생하는 매출은 8억원 이상이다.
                        </p>

                        <p>네이버제트는 '제페토 스튜디오' 출시 한 달 만에 8억원 이상의 매출이 발생하고 있다고 5월4일 밝혔다.
                            지난 3월 오픈한 '제페토 스튜디오'는 제페토 내에서 착용 가능한 의상 등
                            다양한 아이템을 직접 제작하고 판매할 수 있는 크리에이터 플랫폼이다.</p>

                        <p>제페토는 Z세대를 대상으로 한 AR 아바타 서비스다.
                            얼굴인식·AR·3D 기술을 활용해 커스터마이징한 자신만의 개성 있는 3D 아바타로 소셜 활동을 즐길 수 있다.
                            지난 2018년 8월 출시 이후 1년 6개월여 만에 글로벌 누적 가입자 1억3천만명을 돌파했으며,
                            해외 이용자 비중과 10대 이용자 비율이 각각 90%, 80%를 차지하고 있다.</p>

                        <p>현재 직접 AR 아이템을 제작·판매하는 제페토 스튜디오 크리에이터 숫자는 6만여 명을 넘어섰다.
                            이들이 직접 판매 등록한 아이템은 약 2만여 종에 달한다.
                            제페토 자체적으로 제공 중인 아이템 수량보다 많은 종류의 아이템이 이용자들 손에서 만들어지고 판매되고 있는 셈이다.
                        </p>
                    </td>
                </tr>
                <tr><td class="text-left">첨부1</td><td>abc.gif (12kb, 99회 다운로드)</td></tr>
                <tr><td class="text-left">첨부2</td><td>123.gif (12mb, 1회 다운로드)</td></tr>
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
            <h3 style="margin-top: 45px;"><i class="fa fa-commenting"></i> 나도 한마디</h3>
            <table class="table" style="border-top: 3px solid black; border-bottom: 3px solid black;">
                <tr>
                    <td style="width: 25%;"><h4>arong2</h4></td>
                    <td><div style="background: yellow; padding: 5px;">2018-08-15 20:20:20</div>
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