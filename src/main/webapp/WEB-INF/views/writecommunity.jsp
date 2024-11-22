<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>게시판 작성</title>
  <link rel="stylesheet" href="../styles/base.css">
  <link rel="stylesheet" href="../styles/writecommunity.css">
</head>
<body class="background">
<section>
<form action="/api/community/save" method="post">
  <div class="fade-in-top" id="edit_community">
    <div id="community_title_frame">
      <svg id="community_title_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
        <path d="M362.7 19.3L314.3 67.7 444.3 197.7l48.4-48.4c25-25 25-65.5 0-90.5L453.3 19.3c-25-25-65.5-25-90.5 0zm-71 71L58.6 323.5c-10.4 10.4-18 23.3-22.2 37.4L1 481.2C-1.5 489.7 .8 498.8 7 505s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L421.7 220.3 291.7 90.3z"></path>
      </svg>
      <p class="jua-regular" id="community_title">게시판 작성</p>
    </div>
    <!-- 버튼 -->
    <button id="reset" type="reset"><span class="jua-regular" id="reset_text">초기화</span></button>
    <button id="submit" type="submit"><span class="jua-regular" id="submit_text">작성</span></button>

    <div id="write_frame">
      <label for="write_title"></label>
      <input class="jua-regular" id="write_title" type="text" name="write_title" placeholder="제목을 입력해 주세요">

      <label for="write_detail"></label>
      <textarea class="jua-regular" id="write_detail" name="write_detail" placeholder="내용을 입력해 주세요"></textarea>
    </div>
  </div>
  <div class="fade-in-bottom" id="tag_frame">
    <div id="question_type">
      <div class="radio-button-container">
        <div class="radio-button">
          <input type="radio" class="radio-button__input" id="radio1" name="noticeboard" value="자유게시판" checked>
          <label class="radio-button__label" for="radio1">
            <span class="radio-button__custom"></span>
            자유게시판
          </label>
        </div>
        <div class="radio-button">
          <input type="radio" class="radio-button__input" id="radio2" name="noticeboard" value="질문게시판">
          <label class="radio-button__label" for="radio2">
            <span class="radio-button__custom"></span>
            질문게시판
          </label>
        </div>
        <div class="radio-button">
          <input type="radio" class="radio-button__input" id="radio3" name="noticeboard" value="강의게시판">
          <label class="radio-button__label" for="radio3">
            <span class="radio-button__custom"></span>
            강의게시판
          </label>
        </div>
        <div class="radio-button">
          <input type="radio" class="radio-button__input" id="radio4" name="noticeboard" value="정보게시판">
          <label class="radio-button__label" for="radio4">
            <span class="radio-button__custom"></span>
            정보게시판
          </label>
        </div>
      </div>
    </div>
      <div id="language_type">
        <div class="radio-button2-container">
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_1" name="language" value="java">
            <label class="radio-button2__label" for="radio2_1">
              <span class="radio-button2__custom"></span>
              JAVA
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_2" name="language" value="c">
            <label class="radio-button2__label" for="radio2_2">
              <span class="radio-button2__custom"></span>
              C/C++/C#
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_3" name="language" value="php">
            <label class="radio-button2__label" for="radio2_3">
              <span class="radio-button2__custom"></span>
              PHP
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_4" name="language" value="html">
            <label class="radio-button2__label" for="radio2_4">
              <span class="radio-button2__custom"></span>
              HTML
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_5" name="language" value="css">
            <label class="radio-button2__label" for="radio2_5">
              <span class="radio-button2__custom"></span>
              CSS
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_6" name="language" value="javascript">
            <label class="radio-button2__label" for="radio2_6">
              <span class="radio-button2__custom"></span>
              JAVASCRIPT
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_7" name="language" value="python">
            <label class="radio-button2__label" for="radio2_7">
              <span class="radio-button2__custom"></span>
              PYTHON
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_8" name="language" value="kotlin">
            <label class="radio-button2__label" for="radio2_8">
              <span class="radio-button2__custom"></span>
              KOTLIN
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_9" name="language" value="ruby">
            <label class="radio-button2__label" for="radio2_9">
              <span class="radio-button2__custom"></span>
              RUBY
            </label>
          </div>
          <div class="radio-button2">
            <input type="radio" class="radio-button2__input" id="radio2_10" name="language" value="default" checked>
            <label class="radio-button2__label" for="radio2_10">
              <span class="radio-button2__custom"></span>
              DEFAULT
            </label>
          </div>
        </div>
      </div>
  </div>
</form>
  <div class="first-fade-in-left" id="left_display_frame">
    <div class="display-frame">
      <img class="display-img" src="../images/community/display-left.gif" alt="게임 gif">
    </div>
  </div>
  <div class="first-fade-in-right" id="right_display_frame">
    <div class="display-frame">
      <img class="display-img" src="../images/community/display-right.gif" alt="게임 gif">
    </div>
  </div>
</section>
<nav>
  <div class="fade-in-bottom tab-container">
    <input type="radio" name="tab" id="tab1" onclick="window.location.href='/home'" class="tab tab--1"/>
    <label class="tab_label" for="tab1">홈</label>

    <input type="radio" name="tab" onclick="window.location.href='/portfolio'" id="tab2" class="tab tab--2"/>
    <label class="tab_label" for="tab2">포트폴리오</label>

    <input type="radio" name="tab" id="tab3" onclick="window.location.href='/community'" class="tab tab--3"checked/>
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
</body>
</html>