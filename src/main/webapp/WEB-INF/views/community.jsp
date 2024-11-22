<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../styles/base.css">
    <link rel="stylesheet" href="../styles/community.css">
    <title>COMMUNITY</title>
</head>
<body class="background">
<section>
    <div class="fade-in-bottom" id="community">
        <div id="community_frame">
            <div id=community_list_frame>
                <c:forEach var="post" items="${posts}">
                    <div class="card" data-title="${post.write_title}" data-text="${post.write_detail}" data-language="${post.language}" data-noticeboard="${post.noticeboard}">
                            <img class="img" src="../images/community/language/${post.language}.png" alt="대표사진">
                            <div class="jua-regular noticeboard">${post.noticeboard}</div>
                            <div class="jua-regular title">[${fn:toUpperCase(post.language)}]${post.write_title}</div>
                            <div class="jua-regular name">작성자 : ${post.name}</div>
                            <div class="jua-regular id">게시글 ID : ${post.id}</div>
                    </div>
                </c:forEach>
            </div>
            <button class="jua-regular continue-application" onclick="window.location.href='/writecommunity'">
                <div>
                    <div class="pencil"></div>
                    <div class="folder">
                        <div class="top">
                            <svg viewBox="0 0 24 27">
                                <path d="M1,0 L23,0 C23.5522847,-1.01453063e-16 24,0.44771525 24,1 L24,8.17157288 C24,8.70200585 23.7892863,9.21071368 23.4142136,9.58578644 L20.5857864,12.4142136 C20.2107137,12.7892863 20,13.2979941 20,13.8284271 L20,26 C20,26.5522847 19.5522847,27 19,27 L1,27 C0.44771525,27 6.76353751e-17,26.5522847 0,26 L0,1 C-6.76353751e-17,0.44771525 0.44771525,1.01453063e-16 1,0 Z"></path>
                            </svg>
                        </div>
                        <div class="paper"></div>
                    </div>
                </div>
                새 글 작성하기
            </button>
            <div class="jua-regular" id="post_detail_frame">
                <div id="post_detail_title_frame">
                    <span id="post_detail_title"></span>
                </div>
                <div id="post_detail_text_frame">
                    <pre class="jua-regular" id="post_detail_text"></pre>
                </div>
                <div id="post_detail_language_frame">
                    <span id="post_detail_language"></span>
                </div>
                <div id="post_detail_noticeboard_frame">
                    <span id="post_detail_noticeboard"></span>
                </div>
                <button id="exit" type="submit"><span class="jua-regular" id="exit_text">나가기</span></button>
            </div>
        </div>
    </div>
    <div class="fade-in-top" id="search">
        <div id="search_frame">
            <form action="/community" method="get">
                <label for="write_search"></label>
                <input class="jua-regular" id="write_search" type="text" name="search_data" placeholder="검색어를 입력해 주세요" value="${param.title}">
                <svg id="write_search_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path>
                </svg>
                <div id="question_type">
                    <div class="radio-button-container">
                        <div class="radio-button">
                            <input type="radio" class="radio-button__input" id="radio1" name="noticeboard" value="자유게시판"
                            ${param.noticeboard == '자유게시판' ? 'checked' : ''}>
                            <label class="radio-button__label" for="radio1">
                                <span class="radio-button__custom"></span>
                                자유게시판
                            </label>
                        </div>
                        <div class="radio-button">
                            <input type="radio" class="radio-button__input" id="radio2" name="noticeboard" value="질문게시판"
                            ${param.noticeboard == '질문게시판' ? 'checked' : ''}>
                            <label class="radio-button__label" for="radio2">
                                <span class="radio-button__custom"></span>
                                질문게시판
                            </label>
                        </div>
                        <div class="radio-button">
                            <input type="radio" class="radio-button__input" id="radio3" name="noticeboard" value="강의게시판"
                            ${param.noticeboard == '강의게시판' ? 'checked' : ''}>
                            <label class="radio-button__label" for="radio3">
                                <span class="radio-button__custom"></span>
                                강의게시판
                            </label>
                        </div>
                        <div class="radio-button">
                            <input type="radio" class="radio-button__input" id="radio4" name="noticeboard" value="정보게시판"
                            ${param.noticeboard == '정보게시판' ? 'checked' : ''}>
                            <label class="radio-button__label" for="radio4">
                                <span class="radio-button__custom"></span>
                                정보게시판
                            </label>
                        </div>
                        <div class="radio-button">
                            <input type="radio" class="radio-button__input" id="radio5" name="noticeboard" value=""
                            ${param.noticeboard == '' ? 'checked' : ''}>
                            <label class="radio-button__label" for="radio5">
                                <span class="radio-button__custom"></span>
                                전체게시판
                            </label>
                        </div>
                    </div>
                </div>
                <select class="jua-regular" id="language" name="language">
                    <option value="">언어 선택</option>
                    <option value="java" ${param.language == 'java' ? 'selected' : ''}>JAVA</option>
                    <option value="c" ${param.language == 'c' ? 'selected' : ''}>C</option>
                    <option value="php" ${param.language == 'php' ? 'selected' : ''}>PHP</option>
                    <option value="html" ${param.language == 'html' ? 'selected' : ''}>HTML</option>
                    <option value="css" ${param.language == 'css' ? 'selected' : ''}>CSS</option>
                    <option value="javascript" ${param.language == 'javascript' ? 'selected' : ''}>JAVASCRIPT</option>
                    <option value="python" ${param.language == 'python' ? 'selected' : ''}>PYTHON</option>
                    <option value="kotlin" ${param.language == 'kotlin' ? 'selected' : ''}>KOTLIN</option>
                    <option value="ruby" ${param.language == 'ruby' ? 'selected' : ''}>RUBY</option>
                </select>
                <button id="submit" type="submit"><span class="jua-regular" id="submit_text">검색</span></button>
            </form>
        </div>
    </div>
    <div class="first-fade-in-left" id="left_display_frame">
        <div class="display-frame">
            <img src="../images/community/display-left0.gif" alt="왼쪽 디스플레이">
        </div>
    </div>
    <div class="first-fade-in-right" id="right_display_frame">
        <div class="display-frame">
            <img src="../images/community/display-left0.gif" alt="왼쪽 디스플레이">
        </div>
    </div>
</section>
<nav>
  <div class="fade-in-bottom tab-container">
    <input type="radio" name="tab" id="tab1" onclick="window.location.href='/home'" class="tab tab--1"/>
    <label class="tab_label" for="tab1">홈</label>

    <input type="radio" name="tab" onclick="window.location.href='/portfolio'" id="tab2" class="tab tab--2"/>
    <label class="tab_label" for="tab2">포트폴리오</label>

    <input type="radio" name="tab" id="tab3" class="tab tab--3"
           checked/>
    <label class="tab_label" for="tab3">커뮤니티</label>

    <input type="radio" name="tab" id="tab4" onclick="window.location.href='/information'" class="tab tab--4"/>
    <label class="tab_label" for="tab4">정보</label>

    <input type="radio" name="tab" id="tab5" onclick="window.location.href='/setting'" class="tab tab--5"/>
    <label class="tab_label" for="tab5">일정</label>

    <div class="indicator"></div>
  </div>
</nav>
<footer class="text-focus-in">
  <p>CodeCanvas &copy; 2024 - ALL RIGHT RESERVE</p>
</footer>
<script src="../scripts/community/show-post-detail.js"></script>
</body>
</html>