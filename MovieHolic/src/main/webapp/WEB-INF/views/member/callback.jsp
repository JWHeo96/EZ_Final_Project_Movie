<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
 
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script>
    var naverLogin = new naver.LoginWithNaverId({
        clientId: "JR2pDpAzcnTfXmUinpSh", // 본인걸로 수정, 띄어쓰기 금지.
        callbackUrl: "http://localhost:8081/movie/index", // 아무거나 설정
        isPopup: false,
        callbackHandle: true
    });
    naverLogin.init();
 
    window.addEventListener('load', function () {
    naverLogin.getLoginStatus(function (status) {
 
    if (status) {
        /* console.log(naverLogin.user); */
        var age = naverLogin.user.getAge();
        var birthday = naverLogin.user.getBirthday();
        var email = naverLogin.user.getEmail();
        var gender = naverLogin.user.getGender();
        var id = naverLogin.user.getId();
        var name = naverLogin.user.getName();
        var nickName = naverLogin.user.getNickName();
        var tel = naverLogin.user.getMobile();
        var birthYear = naverLogin.user.getBirthyear();
 
        $.ajax({
            type: 'post',
            url: 'naverSave',
            data: {'n_id': id,'n_birthyear':birthYear, 'n_tel':tel, 'n_age':age, 'n_birthday':birthday, 'n_email':email, 'n_gender':gender, 'n_id':id, 'n_name':name, 'n_nickName':nickName},
            dataType: 'text',
            success: function(result) {
                if(result=='ok') {
                    console.log('성공')
                    alert(name + '님 환영합니다!');
                    location.replace("index") 
                } else if(result=='no') {
                    console.log('실패')
                    alert('이미 가입된 이메일입니다\n가입하신 아이디로 로그인 해주세요');
                    location.replace("http://localhost:8081/movie/login_form")
                }
            },
            error: function(result) {
                console.log('오류 발생')
            }
        })
 
    } else {
        console.log("callback 처리에 실패하였습니다.");
    }
    });
});
</script>
</body>
</html>