<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../layout/header.jsp"%>
<main id="main">
    <h2 class="subtitle">회원가입</h2>
    <div class="join_container">
        <div id="join_input">
            <form action="#">
                <fieldset>
                    <legend class="hidden">회원가입 정보 입력</legend>
                    <div class="box">
                        <div>
                            <label for="member_name">이름 <span>*</span></label>
                            <input
                                    type="text"
                                    name="member_name"
                                    id="member_name"
                                    class="form_input form_name"
                                    maxlength="30"
                            />
                        </div>
                        <div class="addbtn">
                            <label for="member_id">아이디 <span>*</span></label>
                            <input
                                    type="text"
                                    name="member_id"
                                    id="member_id"
                                    class="form_input form_id"
                                    maxlength="20"
                            />
                            <span class="box_btn"
                            ><a href="#" id="idCheck" onclick="">중복확인</a></span
                            >
                        </div>
                        <div>
                            <label for="member_password">비밀번호 <span>*</span></label>
                            <input
                                    type="password"
                                    name="member_password"
                                    id="member_password"
                                    class="form_input form_name"
                                    maxlength="30"
                            />
                        </div>
                        <div>
                            <label for="check_password"
                            >비밀번호 확인 <span>*</span></label
                            >
                            <input
                                    type="password"
                                    name="check_password"
                                    id="check_password"
                                    class="form_input form_name"
                                    maxlength="30"
                            />
                        </div>
                        <div class="mobile">
                            <label for="member_phone">휴대폰 번호 <span>*</span></label>
                            <select name="member_phone" id="member_phone">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                            </select>
                            <input
                                    type="text"
                                    name="member_phone1"
                                    id="member_phone1"
                                    class="form_input cell1"
                                    maxlength="4"
                            />
                            <input
                                    type="text"
                                    name="member_phone2"
                                    id="member_phone2"
                                    class="form_input cell2"
                                    maxlength="4"
                            />
                        </div>
                        <div>
                            <label for="member_email">이메일 <span>*</span></label>
                            <input
                                    type="text"
                                    name="member_email"
                                    id="member_email"
                                    class="form_input email"
                                    maxlength="30"
                            />
                            <span class="bar">@</span>
                            <input
                                    type="text"
                                    name="member_email1"
                                    id="member_email1"
                                    class="form_input email"
                                    maxlength="30"
                            />
                        </div>
                    </div>
                </fieldset>
                <div class="btn tac">
              <span>
                <input
                        class="box_btn submit"
                        type="button"
                        value="저장"
                        onclick=""
                />
              </span>
                    <span class="box_btn reset">
                <a href="">취소</a>
              </span>
                </div>
            </form>
        </div>
    </div>
</main>
<%@include file="../layout/footer.jsp"%>
