<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>이벤트 상세 페이지</title>
	<link rel ="stylesheet" href="event.css?22" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v6.1.1/js/all.js"></script>
	<script type="text/javascript">
		function declaration() {
  			window.open("declaration.jsp","a","width=400, height=300, left=100, top=50")
  		}
		
		function fn_like() {
			let like = document.getElementById("like");
			let unlike = document.getElementById("unlike");
			if(unlike.value == "unlike") {
				like.innerHTML = "<i class='fa-solid fa-heart' style='color:red;'></i> &nbsp;좋아요&nbsp;0<input type='hidden' id='unlike' value='like'/>";
			}
			
			if(unlike.value == "like") {
				like.innerHTML = "<i class='fa-regular fa-heart' style='color:red;'></i> &nbsp;좋아요&nbsp;0<input type='hidden' id='unlike' value='unlike'/>";
			}
			
		}
		
		$(document).ready(function(){
			
			$("#reReply").click(function(){
				let reReply = $(this).next("div");
				
				if(reReply.css('display','none')) {
					reReply.css('display','block');
				} 
				
				/* if(reReply.css('display','block')) {
					reReply.css('display','none');
				} */
			})
		})
			
			
	</script>
</head>
<body>
	<header>
		<div class="h_wrap">
			헤더
		</div>
	</header>
	<table width="100%">
		<tr>
			<th class="DTLHeader" width="10%">게시물번호</th>
			<th class="DTLHeader" width="45%" align="left">제목</th>
			<th class="DTLHeader" width="35%">이벤트 기간</th>
			<th class="DTLHeader" width="10%">게시물작성자</th>
		</tr>
		<tr>
			<th class="DTLLine" width="10%">no.021</th>
			<th class="DTLLine" width="45%" align="left">아기고양이</th>
			<th class="DTLLine" width="35%">2022-06-01 ~ 2022-06-30</th>
			<th class="DTLLine" width="10%">지기</th>
		</tr>
	</table>
	<div width="100%" align="center">
		<img alt="고양이사진" src="../img/cuteCat.jpeg" width="90%"/>
		<div style="text-align:left;">내용</div>
	</div>
	
	<div class="likeReply" width="100%">
		<span id="like" style="cursor:pointer;" onclick="fn_like()">
			<i class="fa-regular fa-heart" style="color:red;"></i>
			&nbsp;좋아요&nbsp;0 
			<input type="hidden" id="unlike" value="unlike"/>
		</span>
		<span id="reply" >
			<i class="fa-regular fa-comment-dots"></i>
			&nbsp;댓글수&nbsp;1
		</span>
		<span id="list"><a href="runningEventPage.jsp"><i class="fa-solid fa-list-ul"></i>목록</a></span>
	</div>
	<div>
		<div class="repleHead"><b>댓글</b></div>
		<div class="repleHead">
			<span>등록순</span>
			<span>&nbsp;|&nbsp;</span>
			<span>최신순</span>
		</div>
	</div>
	<div>
		<div>
			<span>
				[heo june]
			</span>
			<span id="date">
				2022/06/20 21:53:23
			</span>
			<span id="declaration" class="declaration" onclick="declaration()">
				|&nbsp;신고
			</span>
		</div>
		<div class="replyContainer">
			<div id="replyContent">
				아아아아아아
				<br/>
				아아아아아
				<br/>
				아아아아
			</div>
			<div id="reReply">
				<i class="fa-solid fa-check"></i>댓글의 댓글 달기
			</div>
			<div id="reReplyContainer"class="enterReplyContainer" width="90%">
				<div>
					<b>heo june</b>
				</div>
				<div class="enterReply">
					<textarea width="100%" rows="5"></textarea>
				</div>
				<div class="replyEnterBtn">
					<input type="button" value="등록" id="replyBtn"/>
				</div>
			</div>
		</div>
	</div>
	
	<div class="enterReplyContainer" >
		<div>
			<b>heo june</b>
		</div>
		<div class="enterReply">
			<textarea cols="100%" rows="5"></textarea>
		</div>
		<div class="replyEnterBtn">
			<input type="button" value="등록" id="replyBtn"/>
		</div>
	</div>
</body>
</html>