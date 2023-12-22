<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="login">
  <fieldset class="login__container">
    <legend class="login__title">LOGIN</legend>
    <div class="login__discription">
      <span>회원가입 후 즐거운 쇼핑을 즐겨보아요!</span><br/>
      <span>행복한 쇼핑을 경험하세요.</span>
    </div>
    <div>
      <form>
        <div class="login__group">
          <label for="id">아이디</label>
          <input
                  class="login__input"
                  type="id"
                  id="id"
                  placeholder="아이디를 입력해주세요."
          />
        </div>
        <div class="login__group">
          <label for="password">비밀번호</label>
          <input
                  class="login__input"
                  type="password"
                  id="password"
                  placeholder="비밀번호를 입력해주세요."
          />
        </div>
        <button class="login__button">LOGIN</button>
      </form>
    </div>
    <ul class="login__links">
      <li class="bar"><a href="#">회원가입</a></li>
      <li><a href="#">아이디/비밀번호 찾기</a></li>
    </ul>
</fieldset>
</div>
