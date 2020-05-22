<%@page pageEncoding="utf-8" %>

    <div id="main">
        <div class="margin30">
            <i class="fa fa-picture-o fa-3x"> 갤러리</i>
            <hr style="border: 2px solid black">
        </div><!--타이틀-->

        <div class="row margin1050">
            <div class="col-6 text-left">
                <button type="button" class="btn btn-light" id="prevbd"><i class="fa fa-chevron-left" >이전게시물</i></button>
                <button type="button" class="btn btn-light" id="nextbd"><i class="fa fa-chevron-right">다음게시물</i></button>
            </div>
            <div class="col-6 text-right">
                <button type="button" class="btn btn-light" id="newbd"><i class="fa fa-plus-circle">새글쓰기</i></button>
            </div>
        </div><!--버튼들-->
        <div class="row margin1050">
            <table class="table">
                <tr>
                    <th colspan="2" style="border-bottom: 3px solid black;background: #dff0f8;">예쁜 갓냥이</th>
                </tr>
                <tr style="background: #ccff99;">
                    <td class="text-left">siestageek</td><td class="text-right">2012.07.28.16:02/11</td>
                </tr>
                <tr style="background: #ffffcc;">
                    <td colspan="2" style="border-bottom: 3px solid black;">
                        <img src="../img/c.jpg" class="img-fluid"><br>
                        <img src="../img/c.jpg" class="img-fluid"><br>
                        <img src="../img/c.jpg" class="img-fluid"><br>
                        <img src="../img/c.jpg" class="img-fluid"><br>
                        <img src="../img/yujin/slide1.jpg" class="img-fluid"><br>
                    </td>
                </tr>
                <tr><td class="text-left">이미지1</td><td>abcxyz.zip(123KB)</td></tr>
                <tr><td class="text-left">이미지2</td><td>123987.hwp(1.3MB)</td></tr>
            </table>
        </div><!--본문들-->
        <div class="row margin1050" >
            <div class="col-6 text-left">
                <button type="button" class="btn btn-light" id="updbd"><i class="fa fa-pencil">수정하기</i></button>
                <button type="button" class="btn btn-light" id="delbd"><i class="fa fa-trash">삭제하기</i></button>
            </div>
            <div class="col-6 text-right">
                <button type="button" class="btn btn-light" id="lstbd"><i class="fa fa-list">목록으로</i></button>
            </div>
        </div><!--버튼들-->
        <div class="row margin1050">
            <h3 style="margin-top: 45px;"><i class="fa fa-comments"></i>나도 한마디</h3>
            <table class="table" style="border-top: 3px solid black; border-bottom: 3px solid black">
                <tr>
                    <td style="width: 25%" class="text-left"><h4>siestageek</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 1px;">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0;">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가.. 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                        </p>
                        <ul class="list-unstyled"><!--댓글의 댓글 시작-->
                            <li>
                                <div style="background: lime; padding: 10px 1px;"><span><b>siestageek</b></span>
                                <span style="float: right">2012-02-08 14:50:35</span></div>
                                <p style="padding: 5px 1px;">정말인가요? 우아~ 심하다!~</p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-left"><h4>siestageek</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 1px;">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0;">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가.. 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-left"><h4>siestageek</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 1px;">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0;">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가.. 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%" class="text-left"><h4>siestageek</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 1px;">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0;">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가.. 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                        </p>
                    </td>
                </tr>
            </table>
        </div><!--댓글-->
        <div class="row margin1050">
            <form class="card card-body bg-light" style="margin: 30px 0;">
                <div class="form-group row">
                    <label style="margin: auto">로그인하세요</label>
                    <textarea class="form-control col-7" id="comment" cols="30" rows="10"></textarea>
                    <button style="margin: auto" id="bdcmt" type="button" class="btn btn-dark"><i class="fa fa fa-commenting">댓글쓰기</i></button>
                </div>
            </form>
        </div><!--댓글쓰기-->
    </div>
</div>
