<%@page pageEncoding="utf-8" %>

    <!--메인영역 시작-->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-comments fa-2x"> 자유 게시판</i>
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
            <form class="card card-body bg-light" name="bdfrm" id="bdfrm" method="post">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">제목</label>
                    <input type="text" id="title" name="title" class="form-control col-9">
                </div><!--제목-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">작성자</label>
                    <input type="text" id="userid" name="userid" class="form-control col-9 readonly" value="hanrury">
                </div><!--작성자 (실제로는 안씀)-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">본문내용</label>
                    <textarea id="contents" name="contents" rows="15" class="form-control col-9"></textarea>
                </div><!--본문내용-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">자동입력 방지</label>
                    <img src="../img/google_recaptcha.gif" width="50%" height="50%" style="margin-left: -5px;">
                </div><!--자동입력방지-->


                <div class="row justify-content-center" style="margin-top: 85px;">
                    <hr style="width: 90%;color: gray;">
                    <button type="button" id="bdregbtn" class="btn btn-primary" style="margin-right: 10px;" >
                        <i class="fa fa-check"></i> 입력완료
                    </button>
                    <button type="button" id="bdnobtn" class="btn btn-danger">
                        <i class="fa fa-remove"></i> 취소하기
                    </button>
                </div><!--버튼-->

            </form>
        </div><!--새글쓰기 폼-->

    </div>
    <!--메인영역 끝-->

