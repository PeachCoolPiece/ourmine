<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

    <title>회원가입</title>
    <link rel="icon" href="#" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="${cPath }/resources/css/my-task.style.min.css">
	
    <script type="text/javascript" src="${cPath}/resources/js/jquery-3.6.3.min.js"></script>
    <link rel="stylesheet" href="${cPath}/resources/css/animations.css">


<style>
   #nextBtn{
      width: 380px;
   }
   .error {
      color: red;
   }
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btnRegist").bind("click", function(){
			$("#frmRegist").submit();
		});
	})
</script>


<div id="mytask-layout" class="theme-indigo">

    <!-- main body area -->
    <div class="main p-2 py-3 p-xl-5">

        <!-- Body: Body -->
        <div class="body d-flex p-0 p-xl-5">
            <div class="container-xxl">

                 <div class="row g-0">
                    <div class="col-lg-6 d-none d-lg-flex justify-content-center align-items-center rounded-lg auth-h100 fadeIn">
                        <div  style="max-width: 50rem;">
                            <div class="text-center mb-5">
                                <a href="/ourmine/homepage">
	                                <img width="200" height="200" alt="OURmine" src="${cPath}/resources/images/lg/마스코트_투명.png"> 
                                </a> 
                            </div> 
                            <div class="mb-5">
                                <h2 class="color-900 text-center fw-bold">OURmine에 오신 걸 환영합니다!</h2>
                            </div>
                            <!-- Image block -->
                            <div class="">
                               <img src="${cPath }/resources/images/로그인2.png" alt="login-img" style="width:700px; ">
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 d-flex justify-content-center align-items-center border-0 rounded-lg auth-h100">
                        <div class="w-100 p-3 p-md-5 card border-0 bg-dark text-light" style="max-width: 32rem;">
                            <!-- Form -->
                            <form id="frmRegist" name="frmRegist" action="${cPath }/member/memberJoin" method="post" class="row g-1 p-3 p-md-4" onsubmit="handleSubmit(event)">
                                <div class="col-12 text-center mb-1 mb-lg-5">
                                    <h1>회원가입</h1>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">이메일</label>
                                        <input name="memberEmail" type="email" id="memberEmail" class="form-control form-control-lg" placeholder="name@example.com" onchange="handleChange(event)"/>
                                        <span id="check"></span>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">이름</label>
                                        <input name="memberName" id="memberName2" class="form-control form-control-lg" placeholder="이름" onchange="handleChange(event)"/>
                                    	<span id="memberName"></span>
                                    </div>
                                </div>
                                  <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">전화번호</label>
                                        <input name="memberTel" id="memberTel2" class="form-control form-control-lg" placeholder="010-1111-1111" onchange="handleChange(event)"/>
                                    	<span id="memberTel"></span>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">비밀번호</label>
                                        <input name="memberPassword" id="memberPassword" type="password" class="form-control form-control-lg" placeholder="비밀번호(8~20자 영문,숫자,특수문자 조합)" onchange="handleChange(event)"/>
                                        <span id="pass"></span>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">비밀번호 확인</label>
                                        <input type="password" id="memberPasswordResult" name="memberPasswordResult" class="form-control form-control-lg" placeholder="비밀번호 재입력" onchange="handleChange(event)"/>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            <a href="#" title="Terms and Conditions" class="text-secondary">서비스 이용약관, 개인정보 처리방침</a>을 확인하였고,이에 동의합니다.
                                        </label>
                                        <span id="terms"></span>
                                    </div>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <button type="button" class="btn btn-lg btn-block btn-light lift text-uppercase" alt="SIGNUP" id="btnRegist">회원가입</button>
                                    <button type="button" class="btn btn-lg btn-block btn-light lift text-uppercase" alt="SIGNUP" id="btnTest">자동완성</button>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <span class="text-muted"> 이미 가입 하셨나요? <a href="/ourmine/login" class="text-secondary"> 로그인 하러가기 </a></span>
                                </div>
                            </form>
                            <!-- End Form -->
                        </div>
                    </div>
                </div> <!-- End Row -->
            </div>
        </div>
    </div>
</div>
    <script>
    let regex = new RegExp("([!#-'*+/-9=?A-Z^-~-]+(\.[!#-'*+/-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~]))+\")@([!#-'*+/-9=?A-Z^-~-]+(\.[!#-'*+/-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])"); // 이메일 정규식
    let reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/; // 비밀번호 정규식
    let regPone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/; // 전화번호 정규식
    let memberName  = document.querySelector("#memberName")
    let memberTel  = document.querySelector("#memberTel")
    let check = document.querySelector("#check")
  	let pass =  document.querySelector("#pass")
    let isTel = true;
    let isEmail = true;
    let ismemName = true;
  	let isPassword = true;
    let isFormCheckInput = false;
    let formCheckInput = document.querySelector('.form-check-input');
    let btnTest = document.querySelector('#btnTest');
    let terms = document.querySelector('#terms');

	let email = document.querySelector('#memberEmail');
	let memberName2 = document.querySelector('#memberName2');
	let memberPassword = document.querySelector('#memberPassword');
	let memberPasswordResult = document.querySelector('#memberPasswordResult');
	let memberTel2 = document.querySelector('#memberTel2');

    formCheckInput.addEventListener('click', () => isFormCheckInput = !isFormCheckInput)



     const member = {
    		 memberName : '',
    		 memberEmail : '',
    		 memberTel : '',
    		 memberPassword : '',
    		 memberPasswordResult : '',
     }
    btnTest.addEventListener('click', () => {
	    email.value = 'dlstn@naver.com';
	    memberName2.value = '김인수';
	    memberTel2.value = '010-6534-1437';
	    memberPassword.value = 'wjdwoghks12!';
	    memberPasswordResult.value = 'wjdwoghks12!';

		member.memberEmail = 'dlstn@naver.com';
		member.memberName = '김인수';
		member.memberTel = '010-6534-1437';
		member.memberPassword = 'wjdwoghks12!';
		member.memberPasswordResult = 'wjdwoghks12!';
	    handlePasscheck();
	    handlePhoeCheck();
	    handleNameCheck();
	    handleCheckChange();
	    console.log(member);
    })

    const handleChange = (e) => {
    	 const {name,value} = e.target;
    	  console.log(name,value)
    	  add(name,value);
    	  handlePasscheck();
    	  handlePhoeCheck();
    	  handleNameCheck();
    	  handleCheckChange();

     }
     const add = (name,value) => {
  	 	 member[name] = value;
  	 	 console.log(member);


    }

    const handlePhoeCheck = () => {
    	if(member.memberTel === ''){
    		memberTel.innerHTML = '';
    		isTel = false;
    		return false;
    	}
    	if(!regPone.test(member.memberTel)){
    		memberTel.innerHTML = '';
    		memberTel.innerHTML = '올바른 전화번호 형식이 아닙니다.';
    		memberTel.style.color = 'red'
    		isTel = false;
			return false;
    	}else {
    		memberTel.innerHTML = '';
    		memberTel.innerHTML = '사용가능한 전화번호 입니다';
    		memberTel.style.color = 'green';
    		isTel = true;
    	}
    }
    const handleNameCheck = () => {
    	if(member.memberName === ''){
    		memberName.innerHTML = '';
    		memberName.innerHTML = '이름을 입력해주세요';
    		ismemName = false;
    		return false;
    	}else {
    		memberName.innerHTML = '';
    		ismemName = true;
    	}

    }

     const handleCheckChange = () => {
  //  	 e.preventDefault();
    	 fetch('/ourmine/member/member/json',{
     		method : 'POST',
     		 headers: {
     			    'Content-Type': 'application/json',
     			  },
     		 body: JSON.stringify(member),
     	 })
     	.then((response) => response.json())
     	.then((data) => {
     			if(member.memberEmail === ''){
     				check.innerHTML = '';
     				isEmail = false;
     				return false;
     			}
     			if( !regex.test(member.memberEmail)){
     				check.innerHTML = '';
     				check.innerHTML = '올바른 이메일 형식이 아닙니다.';
     				check.style.color = 'red'
     				isEmail = false;
     				return false;
     			}else{
     				if(data > 0){
     				check.innerHTML = '';
     	     		 check.innerHTML = '이미 가입된 이메일입니다.';
     	     		check.style.color = 'red';
     	     		isEmail = false;
     	     		return false;
     	     		 }else{
     	     		check.innerHTML = '';
     	     		check.innerHTML = '사용 가능한 이메일입니다.';
     	     		check.style.color = 'green';
     	     		isEmail = true;
     	     		return false;
     	     	  }
     			}



     		 })

     }
   const handlePasscheck = () => { // 비밀번호 정규식 체크
    	let password = member.memberPassword;
   		console.log(password);
    	 if(member.memberPassword === ''){
    		 pass.innerHTML = '';
    		 isPassword = false;
    		 return false;
    	 }
    	if( !reg.test(password)){
    		 pass.innerHTML = '올바른 비밀번호 형식이 아닙니다.';
			 pass.style.color = 'red';
			 isPassword = false;
			 return false;
    	}else{
    		 pass.innerHTML = '사용 가능한 비밀번호 입니다.';
			 pass.style.color = 'green';
			 isPassword = true;
			 return false;
    	}
   }

     const handleSubmit = (e) => {

    	 e.preventDefault();

		 if( ! isFormCheckInput ){
			 terms.innerHTML = '';
			 terms.innerHTML = '약관을 체크해 주세요';
			 terms.style.color = 'red';
         }else{
			 terms.innerHTML = '';
         }

    	 if(member.memberEmail === ''){
    		 check.innerHTML = '';
			check.innerHTML = '이메일을 입력해주세요';
			check.style.color = 'red';
			isEmail = false;
    	 }
    	 if(member.memberName === ''){
    		 memberName.innerHTML = '';
    		 memberName.innerHTML = '이름을 입력해주세요';
    		 memberName.style.color = 'red';
    		 ismemName = false;
    	 }
    	 if(member.memberTel === ''){
    		 memberTel.innerHTML = '';
    		 memberTel.innerHTML = '전화번호를 입력해주세요';
    		 memberTel.style.color = 'red';
    		 isTel = false;
    	 }
    	 if(member.memberPassword === ''){
    		 pass.innerHTML = '';
    		 pass.innerHTML = '';
    		 pass.innerHTML = '비밀번호를 입력해주세요';
    		 pass.style.color = 'red'
    	     isPassword = false;

    	 }else{

    		 if(member.memberPassword != member.memberPasswordResult){
        		 pass.innerHTML = '';
        		 pass.innerHTML = '비밀번호 가 같지 않습니다.';
        		 pass.style.color = 'red';
        		 isPassword = false;
        	 }
    	 }

    	 console.log("istel = ",isTel);
    	 console.log("isEmail = ",isEmail);
    	 console.log("ismemName = ",ismemName);
    	 console.log("isPassword = ",isPassword);
    	 console.log("isFormCheckInput = ",isFormCheckInput);

    	 if(isTel && isEmail && ismemName && isPassword && isFormCheckInput) {
    	 fetch('/ourmine/member/memberJoin',{
    		method : 'POST',
    		 headers: {
    			    'Content-Type': 'application/json',
    			    'accept': 'application/json',
    			  },
    		 body: JSON.stringify(member),
    	 })
    		 .then((response) => response.json())
    		 .then((data) => {
    			 if(data > 0){
    				  console.log('성공:', data);
    				  location.href = '/ourmine/homepage';
    			 }

    		 })

    	 }
     }

     </script>


