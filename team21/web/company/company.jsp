<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%--<%
    String path = request.getContextPath();
%>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사소개</title>

    <%@ include file="../head.jsp" %>
    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
    <link rel="stylesheet" href="../google.css">
    <link rel="stylesheet" href="../fonts.css">

    <!-- 필요한 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="../common.css">
    <link rel="stylesheet" href="../hd.css">

    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
        /* 본문 영역 스타일 */
        .wrap { background-color: #fffcf2;}
        .contents { clear:both; height:2450px;
            background-image: url("../images/bg_visual_overview.jpg");
            background-repeat: no-repeat; background-position:center -250px; padding-bottom: 500px;}
        .contents::after { content:""; clear:both; display:block; width:100%; }

        .page { clear:both; width: 100vw; position:relative; }
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }
        .page_tit { font-size:48px; text-align: center; padding-top:1em; color:#fff;
            padding-bottom: 2.4rem; }

        .breadcrumb { clear:both;
            width:1200px; margin: 0 auto; text-align: right; color:#fff;
            padding-top: 28px; padding-bottom: 28px; }
        .breadcrumb a { color:#fff; }
        .row { clear: both; height: 900px; width: 1200px;}
        .container { clear: both; height: 130px;}
        .container:first-child {padding-top: 50px; padding-left: 393px;}
        .container:last-child {padding-bottom: 50px;}
        .container .txt1 p { vertical-align: middle;}
        .txt1 {
            width: 1000px;
            margin: 40px auto;
        }
        .img1 {
            padding: 0 100px;
            width: 1000px;
            height: 650px;
        }
        .img2 {
            padding: 50px 430px;
            width: 400px;
            height: 150px;
        }
        .img1_tit { margin-bottom: 40px; font-weight: bold; font-size: large; text-align: center;
        }
        .container span {
            font-size:48px; text-align: center;  color: #000000; font-weight: 900;
        }
        .container span:nth-child(2) {
            font-size:48px; text-align: center;  color: #ffde34;
        }
        container:last-child {
            clear: both;
        }
        .inner {
            margin: 30px auto;
            width: 1200px;
            box-sizing: border-box;
        }
        .btn-group {
            display: flex;
        }
        .btn-group .button {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 2.333rem;
            min-width: 12.5rem;
            height: 4.166rem;
            font-size: 1.333rem;
            line-height: 1;
            border: 2px solid #cdcdcd;
            -webkit-border-radius: 2.083rem;
            -moz-border-radius: 2.083rem;
            border-radius: 2.083rem;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-transition: all .15s ease-in .05s;
            -moz-transition: all .15s ease-in .05s;
            -ms-transition: all .15s ease-in .05s;
            -o-transition: all .15s ease-in .05s;
            transition: all .15s ease-in .05s;
        }
        .btn-group.tab-group {
            justify-content: center;
        }
        .tab-group .active {
            border-color: #f5be8b;
            background: #ffffff;
            color: #222;
            margin: 0 0.416rem;
            font-size: 1.5rem;
            font-weight: 700;
        }
        .tab-group .btn_tab {
            margin: 0 0.416rem;
            font-size: 1.5rem;
            font-weight: 700;
            color: #cdcdcd;
            background: #fff;
        }

        .info_list {
            float: left;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
        }
        .info_wrap {font-size: 15px;
            line-height: 28px;
            letter-spacing: -0.3px;}
        .info_wrap .info_sub_title {
            font-weight: bold;
        }
        .info_wrap .info_sub_text {
            word-break: keep-all;
            word-wrap: break-word;
            overflow-wrap: break-word;
            height: 130px;
        }


        .row0 { clear: both;     min-height: 1435px; width: 1200px;}
        .container0 { clear: both; height: 400px; margin: 50px auto;}
        .container0:first-child {padding-top: 35px;}
        .container0:last-child {padding-bottom: 50px;}
        .container0 .img10 {  float: left; padding-left: 103px; }
        .container0 .txt10 { float: right; width: 379px; padding: 100px; }
        .container0 .txt10 p { vertical-align: middle;}
        .img10_tit { margin-bottom: 20px; font-weight: bold; font-size: large;
        }
        .container0 span {
            font-size:48px; text-align: center;  color: #000000; font-weight: 900; padding-left: 393px;
        }
        #scroll2 {font-size: 48px;
            text-align: center;
            color: #ffde34;
            font-weight: 900;
            /* margin-top: 150px; */
            }
        .info_list0 {
            float: left;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
        }
        .info_wrap0 {font-size: 15px;
            line-height: 40px;
            letter-spacing: -0.3px;}
        .info_wrap0 .info_sub_title0 {
            font-weight: bold;
        }
        .info_wrap0 .info_sub_text0 {
            word-break: keep-all;
            word-wrap: break-word;
            overflow-wrap: break-word;
        }

    </style>

    <link rel="stylesheet" href="../ft.css">
    <style>
        .btn_group { clear:both; width:800px; margin:20px auto; }
        .btn_group:after { content:""; display:block; width:100%; clear: both; }
        .btn_group p {text-align: center;   line-height:3.6; }
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp"%>
    </header>
    <div class="contents" id="contents">
        <div class="breadcrumb">
            <p><a href="<%=path8 %>">HOME</a> &gt <span>회사소개</span> &gt <span>윜이란?</span> </p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">윜이란?</h2>
                <hr>
                <div class="inner">
                    <div class="btn-group tab-group type3">
                        <a ui-sref="textbook01" ui-sref-opts="{reload: true}" class="button active scroll_move" href="<%=path8 %>/company/company.jsp">윜이란?</a>
                        <a ui-sref="textbook02" ui-sref-opts="{reload: true}" class="button btn_tab" href="#scroll">윜 스토리</a>
                        <a ui-sref="textbook03" ui-sref-opts="{reload: true}" class="button btn_tab" href="<%=path8 %>/company/contribution.jsp">사회공헌</a>
                        <!-- <a href="#" class="button btn_tab">XR</a> -->
                    </div>
                </div>
                <div class="row">
                    <section class="container">
                        <span>W</span>
                        <span>EE</span>
                        <span>K CAN DO IT!</span>
                    </section>
                    <section>
                        <div class="img1">
                            <p class="img1_tit">Week은 교육 서비스에
                                최적화된 교육·출판 전문 기업입니다.</p>
                            <img src="../weekcrew/images/img_company.jpg" alt="회사 소개" />
                        </div>
                        <div class="txt1">
                            <div class="info_list">
                                <dl class="info_wrap">
                                    <dd class="info_sub_text">
                                        Week은 유아부터 고등까지 모든 연령대의 교육 콘텐츠 전문 기업입니다.
                                        10년간 교육 콘텐츠업계 매출 1위를 차지하고 있으며,
                                        연간 5,000여 종에 이르는 유아동·초·중·고등 학습 교재를 발간하고 있습니다.

                                        또한 미래 인재 육성을 위한 AI 교육 컨텐츠 개발과 1,000여 종의 동강상 강의를 제공합니다.
                                        4차 산업혁명 시대에 발맞춘 스마트러닝, 에듀테크 사업 등을 통해
                                        대한민국 교육 트렌드를 주도하고 있습니다.</dd>
                                </dl>
                            </div>
                        </div>
                    </section>
                    <section class="container">
                        <div id="scroll" class="img2">
                            <span>W</span>
                            <span id="scroll2">EE</span>
                            <span>K STORY</span>
                        </div>
                    </section>
                    <div class="row0">
                        <section class="container0">
                            <div class="img10">
                                <p class="img10_tit"> 1️⃣ AI 학습 관련 연구 개발</p>
                                <img src="../weekcrew/images/img_ai.jpg" alt="" class="img20"/>
                            </div>
                            <div class="txt10">
                                <div class="info_list0">
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ AI 학습 지완 관련 연구 및 자료 개발</dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 실용 중심의 학습 평가 지원</dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 특정 분야 반복학습을 위한 데이터 분석 </dt>
                                    </dl>
                                </div>
                            </div>
                        </section>
                        <section class="container0">
                            <div class="img10">
                                <p class="img10_tit"> 2️⃣ 교과용 도서 연구 및 검정</p>
                                <img src="../weekcrew/images/img_bookd.jpg" alt="" class="img20"/>
                            </div>
                            <div class="txt10">
                                <div class="info_list0">
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 초.중.고 교과과정 도서 및 참고서 연구 </dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 초.중.고 교과과정 도서 및 참고서 검정 업무</dt>
                                    </dl>
                                </div>
                            </div>
                        </section>
                        <section class="container0">
                            <div class="img10">
                                <p class="img10_tit"> 3️⃣ 국가고사 최신경향 관리 </p>
                                <img src="../weekcrew/images/img_exam.jpg" alt="" class="img20"/>
                            </div>
                            <div class="txt10">
                                <div class="info_list0">
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 각종 국가고사 최신경향 연구 및 관리</dt>
                                    </dl>
                                    <dl class="info_wrap0">
                                        <dt class="info_sub_title0"> ✅ 시.도교육청 연합학력평가 연구 및 결과 분석</dt>
                                    </dl>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <script>
                $(document).ready(function($) {
                    $(".scroll_move").click(function(event){
                        event.preventDefault();
                        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
                    });
                });
            </script>
        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="../footer.jsp" %>
    </footer>
</div>
</body>
</html>
