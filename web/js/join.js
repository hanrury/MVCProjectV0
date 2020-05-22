$('#joinokbtn').on('click',function () {
    if ($('#name').val() == "") {
        alert('이름을 입력하세요');
        $('#name').focus();
    } else if (($('#jumin1').val() == "") || $('#jumin2').val() == ""){
        alert('주민번호를 입력하세요.');
        $('#jumin1').focus();
    }else if ($('#uid').val() == "") {
        alert('아이디를 입력하세요.');
        $('#uid').focus();
    } else if ($('#pwd').val() == "") {
        alert('비밀번호를 입력하세요.');
        $('#pwd').focus();
    } else if ($('#repwd').val() == "") {
        alert('비밀번호를 똑같이 입력하세요.');
        $('#repwd').focus();
    } else if ($('#hp1').val() == "") {
        alert('전화번호를 입력하세요.');
        $('#hp1').focus();
    }  else if ($('#hp2').val() == "") {
        alert(' 전화번호를 입력하세요.');
        $('#hp2').focus();
    } else if ($('#captcha').val() == "") {
        alert('캡차를 똑같이 입력하세요.');
        $('#captcha').focus();
    } else {
        $('#joinfrm').submit();
    }
}); // 회원가입완료

$('#joinnobtn').on('click',function () {

}); // 회원가입취소

//agree
$('#okagree').on('click',function () {
    if (!$('#agree1').is(':checked'))
        alert("이용약관 동의 요망");
    else if (!$('#agree2').is(':checked'))
        alert("개인정보 활용 동의 요망");
    else
        location.href = '/join/checkme.do';
});

//동의안함
$('#noagree').on('click',function () {
    location.href ='/index.do';
});

$('#cancelbtn').on('click',function () {
    location.href ='/index.do';
});

$('#checkbtn').on('click',function () {
    if ($('#name').val() == '')
        alert('이름을 입력하세여');
    else if (!$('#byear').is(':changed') || !$('#bmonth').is(':changed') ||
            !$('#bday').is(':changed'))
        alert('생년을 입력하세요');
    else if (!$('#gender').is(':checked'))
        alert('성별을 선택');
});

$('#loginbtn').on('click',function () {
   if ($('uid').val() == '')
       alert('input ur id');
   else if ($('pwd').val() == '')
       alert('input ur pw')
    else
        $('#loginfrm').submit();
});