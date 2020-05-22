    $('#bdregbtn').on('click',function () {
        if($('#title').val()==''){
            alert('책제목을 입력하세요');
            $('#title').focus();
        }else if($('#userid').val()==''){
            alert('사용자 아이디을 입력하세요');
            $('#userid').focus();
        }else if($('#contents').val()=='') {
            alert('본문을 입력하세요');
            $('#contents').focus();
        }else{
            $('#bdfrm').submit();
        }
    }); // 새 글 등록

    $('#newbd').on('click',function () {
        location.href = '/board/write.do';
    }); // 새 글 쓰기

    $('#lstbd').on('click',function () {
        location.href = '/board/list.do';
    }); // 목록
    
    $('#bdnobd').on('click',function () {
        location.href = '/board/list.do';
    }); //취소
    
    $('#delbd').on('click',function () {
        location.href = '/board/delete.do?bno=${param.bno}';
    }); // 글 삭제

    $('#updbd').on('click',function () {
        location.href = '/board/update.do?bno=${param.bno}';
    }); // 수정하기