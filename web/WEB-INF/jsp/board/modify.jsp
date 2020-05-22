<%@page pageEncoding="utf-8" %>

    <div id="main">
        <div class="margin30">
            <i class="fa fa-comments fa-2x">자유 게시판</i>
            <hr>
        </div><!--타이틀-->
        <div class="row mgnpdg15">
            <div class="col-6">
                <h4><i class="fa fa-pencil-square-o">수정하기</i></h4>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd" class="btn btn-light"><i class="fa fa-list"></i>목록으로</button>
            </div>
        </div>
        <div class="row margin1050">
            <form class="card card-body bg-light">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">제목</label>
                    <input type="text" id="title" class="form-control col-9" value="[날씨]&quot;숨이턱턱&quot;;..전국 곳곳 &apos;폭염경보&apos;">
                </div><!--제목-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">작성자</label>
                    <input type="text" id="userid" class="form-control col-9">
                </div><!--작성자-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">본문내용</label>
                    <textarea id="content" name="content" rows="15" class="form-control col-9">
[파이낸셜뉴스] 이원일(41) 셰프의 예부신부인 김유진(29) 프리랜서 PD가 극단적 선택을 시도한 후 의식 없이 중환자실에 입원 중이라고 전해졌다.

4일 소방당국 등에 따르면 이날 오전 2시50분께 김PD가 극단적인 선택을 시도했다는 가족의 신고가 접수됐다.
구급대원이 도착했을 당시 김 PD는 의식이 없는 상태였고, 인근 대학병원으로 옮겨져 치료를 받고 있다.
김PD는 약물을 과다 복용한 것으로 추정된다.

김PD는 이날 SNS를 통해 "억울함을 풀어 이원일 셰프 그리고 우리 두 사람의 가족들에게 더 이상의 피해가 가지 않길 바라는 것 뿐"이라며
"내가 모든 것을 안고 가겠다"라고 적었다. 이 글에는 김PD를 둘러싼 학교 폭력에 대한 입장이 담겨 있다.

김PD는 "나는 이제 곧 이 세상에 더는 존재하지 않는 사람이 될 것 같다. 그 전에 못다 한 이야기를 하려고 한다.
예비신랑이 나 때문에 피해를 보고 있었고, 이유를 막론하고 학창 시절 나로 인해 상처 받았을 친구들이 있었을 수도 있다고 생각했기에
사과문을 올렸다"며 "피해자라고 주장하는 분이 다른 이의 행동을 내게 뒤집어 씌웠을 때 해당 가해자에게 연락이 와서 발을 빼려는 모습을
봤어도 친구라고 생각해 그 사실을 밝히지 않았다"고 적었다.


이어 "이 셰프가 하지 않은 일로 자필 사과문을 올릴 때,
내 마음은 부모님과 예비 시부모님께 죄스러운 마음을 억누른 채 한 글자씩 자필 사과문을 올렸고 억울한
마음을 억누르고 있을 때는 죽고 싶은 심정이었다"며 "피해자라고 주장하는 친구는 뒤에서 지인을 통해 지속해서
협박 문자와 전화를 걸어왔다. 내가 처음부터 모든 것을 밝혔다면 여러분들이 믿어줬겠느냐. 이 셰프에게 나라는 꼬리표가
사라질까"고 덧붙였다.

그러면서 "모든 분께 죄송하다"며 "나는 억울한 모든 것을 안고 사라지겠다.

집에 앉아 키보드 하나로 모든 것을 판단하는 모든 분께 '부디 개인적인 생각으로 판단하지 말라'고 하고 싶다"고 말했다.

앞서 지난달 21일 한 온라인 커뮤니티에는 김PD가 학교 폭력의 가해자라고 주장하는 글이 올라왔다. 김PD는 김 PD는 "앞으로 평생 상처를 준
                    </textarea>
                </div><!--본문내용-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">자동가입방지</label>
                    <img src="../img/google_recaptcha.gif" width="50%" height="50%" style="margin-left: -5px;">

                </div><!--자동가입방지-->
                <div class="row justify-content-center">
                    <hr style="width: 90%;color: gray;margin:35px 0;">
                    <button type="button" class="btn btn-primary"><i class="fa fa-check">수정하기</i></button>
                    &nbsp;
                    <button type="button" class="btn btn-danger"><i class="fa fa-remove">취소하기</i></button>
                </div><!--버튼들-->
            </form>
        </div><!--새글쓰기 폼-->
    </div>