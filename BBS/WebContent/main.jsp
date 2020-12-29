<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>UNIST 커뮤니티 게시판</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type = "button" class ="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>		
			</button>
			<a class="navbar-brand" href="main.jsp">유니스트 커뮤니티 게시판</a>
		</div>
		<div class="collaspe navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">학부 생활<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="under/Info/underInfo.jsp">학과 전공 및 정보 공유</a></li>
						<li><a href="https://unist.edwith.org/">UNIST STAR-MOOC</a></li>
						<li><a href="under/Group/underGroup.jsp">자치단체/동아리 홍보</a></li>
						<li><a href="under/Activity/underActivity.jsp">대내외 활동</a></li>
						<li><a href="under/Hobby/underHobby.jsp">취미 소모임</a></li>
						<li><a href="under/Restaurant/underRestaurant.jsp">배달 및 식당 리스트</a></li>
						<li><a href="under/Parttime/underParttime.jsp">아르바이트 및 과외공고</a></li>
						<li><a href="under/Free/underFree.jsp">자유게시판</a></li>
						<li><a href="https://unist.in/">UNIST.in</a></li>
						<li><a href="https://wiki.unist.in/w/%EB%8C%80%EB%AC%B8">UNIST 위키</a></li>
						<li><a href="https://everytime.kr/c/337">울산과기원 에브리타임</a></li>
					</ul>
				</li>	
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">취업<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="career/Info/careerInfo.jsp">채용 공고</a></li>
						<li><a href="career/Corporate/careerCoporate.jsp">대기업 취업 스터디</a></li>
						<li><a href="career/Public/careerPublic.jsp">공기업 취업 스터디</a></li>
						<li><a href="career/Developer/careerDeveloper.jsp">개발자 취업 스터디</a></li>
						<li><a href="career/Hospital/careerHospital.jsp">PEET/MEET/DEET</a></li>
						<li><a href="career/Lawyer/careerLawyer.jsp">LAW SCHOOL</a></li>
						<li><a href="career/Pro/careerPro.jsp">기술고시/변리사/회계</a></li>
					</ul>
				</li>	
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">대학원 생활<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="https://unist-kor.unist.ac.kr/major-site/">교내 주요 사이트</a></li>
						<li><a href="https://research.unist.ac.kr/">연구처 - 연구행정정보</a></li>
						<li><a href="gra/Lab/graLab.jsp">연구실 홍보</a></li>
						<li><a href="gra/Labperson/graLabPerson.jsp">랩실 구인 공고</a></li>
						<li><a href="gra/LabPaper/graLabPaper.jsp">연구실, 논문, 특허, 제안</a></li>
						<li><a href="gra/Abroad/graAbroad.jsp">해외 대학</a></li>
						<li><a href="gra/Career/graCareer.jsp">석사/박사 채용공고</a></li>
						<li><a href="gra/Postdoc/graPostdoc.jsp">Post Doc</a></li>
						<li><a href="https://scholarworks.unist.ac.kr/">UNIST 논문</a></li>
						<li><a href="https://unist-kor.unist.ac.kr/information-disclosure/">UNIST 공시 정보</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">선배에게 묻는다<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="alum/Journal/alumJournal.jsp">언론 속의 동문</a></li>
						<li><a href="https://news.unist.ac.kr/kor/">모교 소식</a></li>
						<li><a href="alum/Corporate/alumCorporate.jsp">대기업  중견기업</a></li>
						<li><a href="alum/Public/alumPublic.jsp">공기업 및 공공기관</a></li>
						<li><a href="alum/Government/alumGoverment.jsp">정부출연연구소 및 교수</a></li>
						<li><a href="alum/Startup/alumStartup.jsp">Startup 및 개발자</a></li>
						<li><a href="alum/Pro/alumPro.jsp">전문직</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">커뮤니티<span class="caret"></span></a>
					<ul class= "dropdown-menu">		
						<li><a href="com/Announce/comAnnoucne.jsp">공지사항</a></li>
						<li><a href="https://unist-kor.unist.ac.kr/about-unist/overview/unist-at-a-glance-new/">한눈에 보는 UNIST</a></li>
						<li><a href="https://unist-kor.unist.ac.kr/about-unist/parker-square/complaints/">UNIST 소통광장</a></li>
						<li><a href="under/Free/underFree.jsp">U-SPACE</a></li>
						<li><a href="under/Free/underFree.jsp">UNIST 게시</a></li>
						<li><a href="https://docs.google.com/forms/d/e/1FAIpQLSdz7aQLZVCe5lFAWMdrqHkLbLAzl6jPJ0OebQAFt3eh-KKxCw/viewform">동문회 가입</a></li>
						<li><a href="https://alumni.unist.ac.kr/">동문회 모임</a></li>
						<li><a href="com/Company/comCompany.jsp">동문 기업</a></li>
						<li><a href="com/Gallery/comGallery.jsp">갤러리</a></li>
						<li><a href="com/Promotion/comPromotion.jsp">프로모션</a></li>
					</ul>
				</li>
				<li><a href="https://unist-kor.unist.ac.kr/about-unist/giving/giving-to-unist-guide/">UNIST 대학발전기금</a></li>
			</ul>	
			<%
				if(userID == null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href = "login.jsp">로그인</a></li>
						<li><a href = "join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
					
			<%		
				} else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href = "logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<% 	
				}
			%>
		</div>
	</nav>
	<div class= "container">
		<div class = "jumbotron">
			<div class = "container">
				<h1>웹사이트 소개</h1>
				<p>이 웹사이트는 유니스트 커뮤니티 게시판입니다.</p>
				<p><a class="btn btn-primary btn-pull" href="#" role = "button">자세히 알아보기</a></p>
			</div>
		</div>
	</div>
	<div class = "container">
		<div id = "myCarousel" class = "carousel" data-ride = "carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to = "0" class = "active"><li>
				<li data-target="#myCarousel" data-slide-to = "1"><li>
				<li data-target="#myCarousel" data-slide-to = "2"><li>
				<li data-target="#myCarousel" data-slide-to = "3"><li>
				<li data-target="#myCarousel" data-slide-to = "4"><li>
				<li data-target="#myCarousel" data-slide-to = "5"><li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/unist1.jpg">
				</div>
				<div class="item">
					<img src="images/unist2.jpg">
				</div>
				<div class="item">
					<img src="images/unist3.jpg">
				</div>
				<div class="item">
					<img src="images/unist4.jpg">
				</div>
				<div class="item">
					<img src="images/unist5.jpg">
				</div>
				<div class="item">
					<img src="images/unist6.jpg">
				</div>
			</div>
			<a class = "left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class = "right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>  
</body>
</html>