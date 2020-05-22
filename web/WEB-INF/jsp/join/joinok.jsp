<%@page pageEncoding="utf-8" %>

    <div id="main">
        <div class="margin30">
            <i class="fa fa-users fa-2x">회원가입 완료</i>
            <hr>
        </div> <!--타이틀-->

        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item">
                    <button type="button" class="btn btn-success" disabled>이용약관</button>
                </li>
                <li class="breadcrumb-item">
                    <button type="button" class="btn btn-success" disabled>가입인증</button>
                </li>
                <li class="breadcrumb-item">
                    <button type="button" class="btn btn-success" disabled>회원정보입력</button>
                </li>
                <li class="breadcrumb-item active">
                    <button type="button" class="btn btn-success" disabled>가입완료</button>
                </li>
            </ul>
        </nav> <!--breadcrumb-->

        <div class="margin30">
            <h2>회원가입을 축하합니다!!</h2>
            <small class="text-muted">
                안전하고 편리한 홈페이지 이용을 위해 회원님의 아이디와
                비밀번호 관리에 주의해 주시기 바랍니다.
            </small>
            <hr>
        </div> <!--중간타이틀-->

        <div class="jumbotron margin30">
            <h1 class="display-3">회원가입을 축하합니다!!</h1>
            <p class="lead">게시판 글작성, 쇼핑몰 이용등의 일부 서비스는 실명확인 후 이용하실 수 있습니다.<br>
                실명확인 후에도 가입하신 아이디는 변경할 수 없습니다.</p>
            <hr class="my-4">
            <p>회원가입 이후 아이디와 비밀번호로 일반 회원으로 로그인하셔서 추가 인적사항 등을 입력해주시기 바랍니다.</p>
            <p>아롱이와 함께 즐거운 시간 되십시오.</p>
        </div><!--알림판-->
        <div class="text-center" style="margin-bottom: 30px;">
            <button type="button" id="go2index" class="btn btn-dark">
                <i class="fa fa-info-circle"></i> 메인으로 이동</button>
        </div><!--버튼-->
    </div>

<script>
    let go2index = document.getElementById('go2index');
    go2index.addEventListener('click',function () {
        location.href = '../index.jsp';
    })
</script>
