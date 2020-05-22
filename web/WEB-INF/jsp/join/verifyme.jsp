<%@page pageEncoding="utf-8" %>

    <div id="main">
        <div class="margin30">
            <i class="fa fa-users fa-2x"> 회원가입</i>
            <hr>
        </div><!--타이틀-->
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item">
                    <button type="button" class="btn btn-success" disabled>이용약관</button>
                </li>
                <li class="breadcrumb-item active">
                    <button type="button" class="btn btn-success" disabled>가입인증</button>
                </li>
                <li class="breadcrumb-item">
                    <button type="button" class="btn btn-light" disabled>정보입력</button>
                </li>
                <li class="breadcrumb-item">
                    <button type="button" class="btn btn-light" disabled>가입완료</button>
                </li>
            </ul>
        </nav><!--breadcrumb-->
        <div class="margin30">
            <h2>가입인증</h2>
            <small class="text-muted">
                안전한 회원 가입을 위해 휴대폰 인증을 진행해 주세요
            </small>
            <hr>
        </div><!--중간타이틀-->
        <div class="alert alert-danger"role="alert">
            <ul style="margin-bottom: -3px;">
                <li class="list-inline" style="margin-left:-20px"><span class="badge badge-danger">중요한 내용!</span></li>
                <li><span style="color: red">극소수 익명 사용자의 대량기업으로 인한 피해를 방지 하기 위하여 가입인증을 시행하고 있습니다.</span></li>
                <li><span style="color: red">통신사의 사정으로 휴댜폰 인증을 위한 메시지가 지연 발송될수도 있습니다.</span></li>
            </ul>
        </div>
        <div class="card card-body bg-light margin1050">
            <h3 style="margin-top: 20px;"><span class="badge badge-pill badge-danger">1</span>휴대폰 정보</h3>
            <form>
                <div class="row">
                    <div class="col"></div>
                    <div class="col-5">
                        <div class="form-group row margin20">
                            <label for="hp1"class="col-4 col-form-label">휴대폰 번호</label>
                            <select id="hp1" class="col-3 form-control">
                                <option>국번</option>
                                <option>010</option>
                                <option>011</option>
                                <option>016</option>
                            </select>
                            <label class="form-control-label">&nbsp;&ndash;&nbsp;</label>
                            <input type="text" id="hp2" class="form-control col-2">
                            <label class="form-control-label">&nbsp;&ndash;&nbsp;</label>
                            <input type="text" id="hp3" class="form-control col-2">
                        </div>
                    </div>
                    <div class="col-5">
                        <ul>
                            <li><span style="color: red">메세지 수신 가능한 휴대폰으로 인증번호를 받을수 있습니다.</span></li>
                            <li><span style="color: red">휴대폰번호 입력 후 '인증번호 요청하기' 버튼을 눌러주세요</span></li>
                        </ul>
                    </div>
                    <div class="col"></div>
                </div><!--입력폼-->
                <div class="row">
                    <div class="col-12 text-center">
                        <button type="button"class="btn btn-primary"id="requestbtn"class="btn btn-warning">
                            <i class="fa fa-check"style="color: white;">인증번호 요청하기</i></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="card card-body bg-light margin1050">
            <h3 style="margin-top: 20px;"><span class="badge badge-pill badge-danger">2</span>휴대폰 가입인증</h3>
            <form>
                <div class="row">
                    <div class="col"></div>
                    <div class="col-5">
                        <div class="form-group row margin20">
                            <label for="vcode"class="col-4 col-form-label">인증번호입력</label>
                            <input type="text"id="vcode"class="form-control col-4"disabled>
                        </div>
                    </div>
                    <div class="col-5">
                        <ul>
                            <li><span style="color: red">실명확인 회원가입시 공개 게시판 이용이 가능합니다.</span></li>
                            <li><span style="color: red">타인의 주민등록번호를 임의로 사용하면 </span>
                                '주민등록법'에  의해 3년 이하의 징역 또는 1천만원 이하의 벌금<span style="color: red">이 부과될수 있습니다.</span> </li>
                            <li><span style="color: red">입력하신 주민등록번호는</span> 별도 저장되지 않으며,
                                신용평가기관을 통한 실명확인용<span style="color: red">으로만 이용됩니다</span> </li>
                            <li><span style="color: red">개인정보보호법에 따라</span> 이용 동의<span style="color: red">를 받습니다.</span></li>
                        </ul>
                    </div>
                    <div class="col"></div>
                </div><!--입력폼-->
                <div class="row">
                    <div class="col-12 text-center">
                        <button type="button"class="btn btn-primary"><i class="fa fa-check">확인하기</i></button>
                        <button type="button"class="btn btn-danger"><i class="fa fa-remove">취소하기</i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>

<script>
    let hp1 = document.getElementById('hp1');
    let hp2 = document.getElementById('hp2');
    let hp3 = document.getElementById('hp3');
    let reqbtn = document.getElementById('requestbtn');

    reqbtn.addEventListener('click', function () {
        if(hp1.selectedIndex == 0) alert('국번을 선택하세요');
        else if(hp2.value.trim() =='' || hp3.value.trim() == '') alert('나머지을 선택하세요');
        else if(hp2.value.length <4 || hp3.value.length <4) alert('전화번호를 올바르게 입력하세요');
        else location.href = 'joinme.jsp';
    })
</script>



