<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reset.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css" />
    <!--
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script> -->
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/common.js"></script>
    <script src="js/main.js"></script>
</head>
<body>
    <div class="divPop">
        <img src="img/event_popup.png"/>
    </div>
    <div class="wrap">
        <%@ include file="/WEB-INF/jsp/include/header.jsp" %>
        <div class="visual">
            <div class="swiper-area">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" style="background-image: url('img/visual1.png');"></div>
                    <div class="swiper-slide" style="background-image: url('img/visual2.png');"></div>
                    <div class="swiper-slide" style="background-image: url('img/visual3.png');"></div>
                    <div class="swiper-slide" style="background-image: url('img/visual4.png');"></div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <div class="container">
            <div class="size">
                <div class="section">
                    <img src="img/section1_1.png">
                </div>
                <div class="section">
                    <img src="img/section1_2.png">
                </div>
                <div class="section">
                    <img src="img/section1_3.png">
                </div>
                <div class="section">
                    <img src="img/section1_1.png">
                </div>
                <div class="section">
                    <img src="img/section1_2.png">
                </div>
                <div class="section">
                    <img src="img/section1_3.png">
                </div>
            </div>
        </div>
        <div class="info">
            <div class="content">
                <div class="board_area">
                    <div class="board_title on" data-type="board_notice">공지사항</div>
                    <div class="board_title" data-type="board_data">자료실</div>
                    <div class="board_title" data-type="board_news">뉴스</div>
                    <div class="board_content" id="board_notice">
                        <ul>
                            <li>공지사항입니다. <span>2023-01-01</span></li>
                            <li>공지사항입니다. <span>2023-01-01</span></li>
                            <li>공지사항입니다. <span>2023-01-01</span></li>
                            <li>공지사항입니다. <span>2023-01-01</span></li>
                            <li>공지사항입니다. <span>2023-01-01</span></li>
                        </ul>
                    </div>
                    <div class="board_content" id="board_data">
                        <ul>
                            <li>자료실입니다. <span>2023-01-01</span></li>
                            <li>자료실입니다. <span>2023-01-01</span></li>
                            <li>자료실입니다. <span>2023-01-01</span></li>
                            <li>자료실입니다. <span>2023-01-01</span></li>
                            <li>자료실입니다. <span>2023-01-01</span></li>
                        </ul>
                    </div>
                    <div class="board_content" id="board_news">
                        <ul>
                            <li>뉴스입니다. <span>2023-01-01</span></li>
                            <li>뉴스입니다. <span>2023-01-01</span></li>
                            <li>뉴스입니다. <span>2023-01-01</span></li>
                            <li>뉴스입니다. <span>2023-01-01</span></li>
                            <li>뉴스입니다. <span>2023-01-01</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="video_area">
                    <iframe width="100%" height="350" src="https://www.youtube.com/embed/yRyM6yZAgFk" title="디아블로 4는 블리자드의 마지막 희망에 어울리는 게임이었을까?" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        <div class="banner">
            <div class="swiper-container partner_slide">
                <div class="swiper-wrapper">						
                    <div class="swiper-slide">							
                        <div class="img">
                            <img src="img/partner_1.png">
                        </div>						
                    </div>			
                    <div class="swiper-slide">							
                        <div class="img">
                            <img src="img/partner_2.png">
                        </div>						
                    </div>			
                    <div class="swiper-slide">							
                        <div class="img">
                            <img src="img/partner_3.png">
                        </div>						
                    </div>			
                    <div class="swiper-slide">							
                        <div class="img">
                            <img src="img/partner_4.png">
                        </div>						
                    </div>			
                    <div class="swiper-slide">							
                        <div class="img">
                            <img src="img/partner_5.png">
                        </div>						
                    </div>			
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
    </div>
</body>
</html>