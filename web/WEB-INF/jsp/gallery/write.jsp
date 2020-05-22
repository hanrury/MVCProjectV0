<%@page pageEncoding="utf-8" %>

    <div id="main">
        <div class="margin30">
            <i class="fa fa-upload fa-2x">자료실</i>
            <hr>
        </div><!--타이틀-->
        <div class="row mgnpdg15">
            <div class="col-6">
                <h4><i class="fa fa-plus-circle">새글쓰기</i></h4>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd" class="btn btn-light"><i class="fa fa-list"></i>목록으로</button>
            </div>
        </div>
        <div class="row margin1050">
            <form class="card card-body bg-light">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">제목</label>
                    <input type="text" id="title" class="form-control col-9">
                </div><!--제목-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">작성자</label>
                    <input type="text" id="userid" class="form-control col-9">
                </div><!--작성자-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">본문내용</label>
                    <textarea id="content" name="content" rows="15" class="form-control col-9"></textarea>
                </div><!--본문내용-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">파일첨부</label>
                    <div class="custom-file col-7">
                        <input type="file" id="files1" name="files" class="custom-file-input">
                        <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-7 offset-2">
                        <input type="file" id="files2" name="files" class="custom-file-input">
                        <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-7 offset-2">
                        <input type="file" id="files3" name="files" class="custom-file-input">
                        <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                    </div>
                </div><!--파일첨부-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">자동가입방지</label>
                    <img src="../img/google_recaptcha.gif" width="50%" height="50%" style="margin-left: -5px;">

                </div><!--자동가입방지-->
                <div class="row justify-content-center">
                    <hr style="width: 90%;color: gray;margin:35px 0;">
                    <button type="button" class="btn btn-primary"><i class="fa fa-check">입력하기</i></button>
                    &nbsp;
                    <button type="button" class="btn btn-danger"><i class="fa fa-remove">취소하기</i></button>
                </div><!--버튼들-->
            </form>
        </div><!--새글쓰기 폼-->
    </div>
