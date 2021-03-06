<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Fakebook</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="HAPedit 3.1">


<style type="text/css">

body {background: #48649E; margin: 0; padding: 0;}
div#header {height:80px;  width:100%; background: #48649E; color: WHITE; }



#container{text-align:left; height:500px; width:100%; margin:0 auto; background: #EDEFF5; }
#left{float:left;  width: 50%; }
#right{float:right; width: 40%; }
#right2{float:right; width: 30%;}


body { font:12px/1.3 Arial, Sans-serif; } 
form { width:380px; padding:0 0 0 0 ;   } 
div { position:relative; margin:0 0 10px; } 
label { cursor:pointer; display:block; } 


input[type="text"] { width:400px;border:1px solid #999;padding:5px;-moz-border-radius:4px; } 
input[type="text"]:focus { border-color:#777; } 
input[type="password"] { width:400px;border:1px solid #999;padding:5px;-moz-border-radius:4px; } 
input[type="password"]:focus { border-color:#777; } 
input[name="firstname"] { width:150px; } 
input[name="lastname"] { width:150px; } 
input[name="id"] { width:150px; } 
input[name="pass"] { width:150px; } 

input[type="submit"] { cursor:pointer;border:1px solid #999;padding:5px;-moz-border-radius:4px;background:#eee; } 
input[type="submit"]:hover, input[type="submit"]:focus { border-color:#333;background:#ddd; } 
input[type="submit"]:active{ margin-top:1px; } 




#container h2{padding:50px; color : #0E385F;}

div#footer{background: #E9EAED;color: #FFF}
div#footer p{margin:-10px;padding:5px 10px; width: 500px}





div#footer{clear:left;width:100%; color:black;}
</style>
<script type="text/javascript" src="/message-converter/assets/js/jquery/jquery-1.9.0.js"></script>
<script>
$(function(){ 
	$('#info .slider label').each(function(){ 
		var labelColor = '#999'; 
		var restingPosition = '5px'; 
			
		$(this).css({ 'color' : labelColor, 'position' : 'absolute', 'top' : '6px', 'left' : restingPosition, 'display' : 'inline', 'z-index' : '99' }); 
	
		var inputval = $(this).next('input').val(); 
		var labelwidth = $(this).width(); var labelmove = labelwidth + 5; 



		if(inputval !== ''){ $(this).stop().animate({ 'left':'-'+labelmove }, 1); } 

		

	$('input').focus(function(){ 
		var label = $(this).prev('label');
		var width = $(label).width(); 
		var adjust = width + 5; 
		var value = $(this).val(); 
		if(value == ''){ label.stop().animate({ 'left':'-'+adjust }, 'fast'); } 
		else { label.css({ 'left':'-'+adjust }); } }).blur(function(){ var label = $(this).prev('label'); 
		var value = $(this).val(); if(value == ''){ label.stop().animate({ 'left':restingPosition }, 'fast'); } 
		}); 
		}) 
		});
	
</script>

</head>
<body>
<div id="header"> 

	<div id="left">
		<h1>Fakebook</h1> 
	</div>


	<div id=right2>
	<br>
	<form action="" method="post" id="info"> 
		<div id="id-wrap" class="slider"> 
		<label for="id">ID</label>
		<input type="text" id="id" name="id"> 
		
	

		<div id="pass-wrap" class="slider"> 
		<label for="pass">PASSWORD</label>
		<input type="password" id="pass" name="pass"> 	<input id="loginbutton" type="submit" value="로그인">
		</div>
	
	 
	</div>
	

	</form>
	</div>

</div>






<div id="container">
	<div id = "box">
	<div id="left">
	<h2>Facebook에서 전세계에 있는 친구, 가족, 지인들과<br> 함께 이야기를 나눠보세요.</h2>
	<img src="/fakebook/assets/images/world.png">
	</div>

	<div id="right">
			<form action="" method="post" id="info"> 
			<h1>가입하기</h1> 
			<p>항상 지금처럼 무료로 이용하실 수 있습니다.</p>
			
			<div id="firstname-wrap" class="slider"> 
			<label for="firstname">First Name</label>
			<input type="text" id="firstname" name="firstname"> 
			</div>
			
			<div id="lastname-wrap" class="slider"> 
			<label for="lastname">Last Name</label>
			<input type="text" id="lastname" name="lastname"> 
			</div>
			
			<div id="email-wrap" class="slider">
			<label for="email">E&ndash;mail</label> 
			<input type="text" id="email" name="email"> 
			</div><!--/#email-wrap--> 
			
			<div id="checkemail-wrap" class="slider">
			<label for="checkemail">check E&ndash;mail</label> 
			<input type="text" id="checkemail" name="checkemail"> 
			</div><!--/#email-wrap--> 
			
			<div id="password-wrap" class="slider"> 
			<label for="password">Password</label> 
			<input type="password" id="password" name="password"> 
			</div>
			
			<p>가입하기 버튼을 클릭하면 약관에 동의하며 쿠키 사용을 포함한 데이터 정책을 읽고 이해하신 것으로 간주됩니다.</p>
			
			<input type="submit" id="btn" name="btn" value="가입하기"> 
			</form>
			
		</div>			
</div>
</div>
 
 
  <div id="footer"><p>made by 이은호, 제민재</p></div>

</body>
</html>