<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.hashTag{
	color: hotpink;
}
.likeModal {
   display: none; /* Hidden by default */
   position: fixed; /* Stay in place */
   z-index: 1; /* Sit on top */
   padding-top: 100px; /* Location of the box */
   left: 0;
   top: 0;
   width: 100%; /* Full width */
   height: 100%; /* Full height */
   overflow: auto; /* Enable scroll if needed */
   background-color: rgb(0, 0, 0); /* Fallback color */
   background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}
/* Modal Content */
.likeModal-content {
   background-color: #fefefe;
   margin: auto;
   border: 1px solid #888;
   width: 30%;
   height: 70%;
   overflow: auto;
}
/* The Close Button */
.close {
   color: #fefefe;
   float: right;
   font-size: 50px;
   font-weight: bold;
   right: 1.5%;
   top: 0%;
   cursor: pointer;
   background: 0 0;
   border: 0;
   cursor: pointer;
   height: 36px;
   outline: 0;
   position: absolute;
   z-index: 2;
}

/*id는 스타일 최우선으로 적용됨 그 다음에 class */
#carousel {
	position: relative;
	height: 600px;
	top: 50%;
	/* transform: translateY(-50%); */
	overflow: hidden;
}
#carousel article{
height: 560px;
	width: 500px;
	position: absolute;
	/*  transition 변경되는 부분 width 1s만 쓰면 어색함 왜냐하면 width랑 height랑 2가지 요소가 바뀜 */
	transition: transform 1s, left 1s, opacity 1s, z-index 0s, width 1s, height 1s;
	opacity: 1;
}
#carousel .imgDiv {
	height: 500px;
	width: 500px;
	transition: transform 1s, left 1s, opacity 1s, z-index 0s, width 1s, height 1s;
}
#carousel .imgDiv img{
	height: 100%;
	width: 100%;
	object-fit: cover;
}
#carousel .hideLeft {
	height: 260px;
	width: 200px;
	left: 0%; /* 왼쪽 0으로 빠지는 애니메이션 효과 */
	opacity: 0; /*투명도 0으로 숨김처리 */
	transform: translateY(75%) translateX(-75%); /*부모기준으로 위치지정 */
}
#carousel .hideLeft header{
	height: 60px;
	width: 200px;
	left: 0%; /* 왼쪽 0으로 빠지는 애니메이션 효과 */
	opacity: 0; /*투명도 0으로 숨김처리 */
}
#carousel .hideLeft .imgDiv{
	height: 200px;
	width: 200px;
	opacity: 0; /*투명도 0으로 숨김처리 */
}
#carousel .hideLeft img {
   height: 100%;
   width: 100%;
   object-fit: cover;
}
#carousel .hideRight {
	height: 260px;
	width: 200px;
	left: 100%;
	opacity: 0;
	transform: translateY(75%) translateX(-75%);
}
#carousel .hideRight header{
	height: 60px;
	width: 200px;
	left: 100%;
	opacity: 0;
}
#carousel .hideRight .imgDiv{
	height: 200px;
	width: 200px;
	opacity: 0;
}
#carousel .hideRight img {
   height: 100%;
   width: 100%;
   object-fit: cover;
}
#carousel .prev {
	height: 460px; 
	width: 400px;
	z-index: 5;
	left: 30%;
	transform: translateY(50px) translateX(-50%);
}
#carousel .prev header{
	height: 60px; 
	width: 400px;
	z-index: 5;
	left: 30%;
}
#carousel .prev .imgDiv{
	height: 400px; 
	width: 400px;
	z-index: 5;
}
#carousel .prev img{
   height: 100%;
   width: 100%;
   object-fit: cover;
}
#carousel .prevLeftSecond {
	height: 360px;
	width: 300px;
	z-index: 4;
	left: 20%;
	opacity: .7;
	transform: translateY(33%) translateX(-50%);
}
#carousel .prevLeftSecond header{
	height: 60px;
	width: 300px;
	z-index: 4;
	left: 20%;
	opacity: .7;
}
#carousel .prevLeftSecond .imgDiv{
	height: 300px;
	width: 300px;
	z-index: 4;
	opacity: .7;
}
#carousel .prevLeftSecond img{
   height: 100%;
   width: 100%;
   object-fit: cover;
}
/*가운데 이미지 */
#carousel .selected {
	height: 560 px;
	width: 500px; 
	z-index: 10;
	left: 50%;
	transform: translateY(0px) translateX(-50%);
}
#carousel .selected header{
	height: 60px;
	width: 500px; 
	z-index: 10;
	left: 50%;
}
#carousel .selected .imgDiv{
	height: 500px;
	width: 500px; 
	z-index: 10;
}
#carousel .selected img {
   height: 100%;
   width: 100%;
   object-fit: cover;
}
#carousel .next {
	height: 460px;
	width: 400px;
	z-index: 5;
	left: 70%;
	transform: translateY(50px) translateX(-50%);
}
#carousel .next header{
	height: 60px;
	width: 400px;
	z-index: 5;
	left: 70%;
}
#carousel .next .imgDiv{
	height: 400px;
	width: 400px;
	z-index: 5;
}
#carousel .next img {
   height: 100%;
   width: 100%;
   object-fit: cover;
}
#carousel .nextRightSecond {
	height: 360px;
	width: 300px;
	z-index: 4;
	left: 80%;
	transform: translateY(33%) translateX(-50%);
	opacity: .7;
}
#carousel .nextRightSecond header{
	height: 60px;
	width: 300px;
	z-index: 4;
	left: 80%;
	opacity: .7;
}
#carousel .nextRightSecond .imgDiv{
	height: 300px;
	width: 300px;
	z-index: 4;
	opacity: .7;
}
#carousel .nextRightSecond img {
   height: 100%;
   width: 100%;
   object-fit: cover;
}
/* 사진 넘기기 버튼 */
.buttons {
   position: absolute;
   left: 47%;
   bottom: 30%;
}
.fa{
   font-size: 19px;
   border:0;
}
#carousel > article > header{
height: 60px;
background-color: white;
transition: transform 1s, left 1s, opacity 1s, z-index 0s, width 1s, height 1s;
}
a,a:visited{
    text-decoration: none !important;
}

.multiFile{
	position: absolute;
	height: 39px;
	width: 39px;
	background-image: url("http://hyunjoolee.pythonanywhere.com/static/images/sprites/fef349.png");
	background-position: -360px -104px;
	right: 8px;
	top: 8px; 
}
._622au{padding:0}._9dpug{border-bottom:1px solid #efefef}._9dpug._msz04{height:76px;padding:0 16px 16px}._5mwg7{height:60px;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;position:absolute}._ebcx9{padding:0 16px}
._8oo9w{margin-top:4px}._nlmjy{margin-bottom:8px}._277v9{-webkit-box-flex:1;-webkit-flex-grow:1;-ms-flex-positive:1;flex-grow:1;-webkit-flex-shrink:1;-ms-flex-negative:1;flex-shrink:1;min-height:0;overflow:auto}._277v9,._6d44r{margin-bottom:4px}._ti7l3{margin-top:4px}._e34hf{display:none}._fsupd ._ti7l3{min-height:48px}._5lms4 ._ti7l3{padding-right:26px}._fsupd ._9dpug{padding-right:40px}._fsupd ._5mwg7{right:10px;top:0}._5lms4 ._5mwg7{bottom:0;height:52px;right:10px;top:auto}._8n9ix._9445e ._8oo9w{margin-top:-34px}._4kplh{width:100%}._4kplh ._sxolz{background-color:#000;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;margin-right:335px;min-height:450px}._4kplh ._sxolz._mi48x{background-color:#fafafa}._4kplh ._9dpug{border-bottom:1px solid #efefef;height:78px;margin-right:0;padding:20px 0;position:absolute;right:24px;top:0;width:287px}._4kplh ._9dpug._msz04{height:98px;padding:0 0 20px}._4kplh ._ebcx9{bottom:0;-webkit-box-sizing:border-box;box-sizing:border-box;padding-left:24px;padding-right:24px;position:absolute;right:0;top:78px;width:335px}._4kplh ._ebcx9._6zn4x{top:98px}._4kplh ._8oo9w{border-top:1px solid #efefef;margin:0;-webkit-box-ordinal-group:3;-webkit-order:2;-ms-flex-order:2;order:2;padding-top:2px}._4kplh ._nlmjy{margin-bottom:4px;-webkit-box-ordinal-group:4;-webkit-order:3;-ms-flex-order:3;order:3}._4kplh ._277v9{margin:0 -24px auto;-webkit-box-ordinal-group:2;-webkit-order:1;-ms-flex-order:1;order:1;padding:12px 24px}._4kplh ._6d44r{margin-bottom:0;-webkit-box-ordinal-group:5;-webkit-order:4;-ms-flex-order:4;order:4}._4kplh ._ti7l3{-webkit-box-ordinal-group:6;-webkit-order:5;-ms-flex-order:5;order:5}._4kplh._5lms4 ._5mwg7{right:18px}@media (-webkit-min-device-pixel-ratio:2){._8n9ix ._9dpug{border-bottom-width:.5px}}
._7b8eu,._csp04{-webkit-box-orient:horizontal;-webkit-box-direction:normal;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row}._7b8eu{height:60px;padding:16px;-webkit-box-align:center;-webkit-align-items:center;-ms-flex-align:center;align-items:center}._iuvin button{line-height:18px;padding:0}._csp04{-webkit-box-align:baseline;-webkit-align-items:baseline;-ms-flex-align:baseline;align-items:baseline}._6y8ij{max-width:100%}._s7b66{display:inline}._74oom{-webkit-box-orient:horizontal;-webkit-box-direction:normal;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;-webkit-box-align:baseline;-webkit-align-items:baseline;-ms-flex-align:baseline;align-items:baseline;max-width:240px}._j56ec{-webkit-box-align:start;-webkit-align-items:flex-start;-ms-flex-align:start;align-items:flex-start;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-flex:1;-webkit-flex-grow:1;-ms-flex-positive:1;flex-grow:1;-webkit-flex-shrink:1;-ms-flex-negative:1;flex-shrink:1;margin-left:12px;overflow:hidden}._k32zm{padding-top:20px}._60iqg{display:block;max-width:100%;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}._eeohz{-webkit-box-align:center;-webkit-align-items:center;-ms-flex-align:center;align-items:center;-webkit-box-orient:horizontal;-webkit-box-direction:normal;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;max-width:100%}._iadoq,._iadoq:visited{color:#262626;-webkit-box-flex:0;-webkit-flex-grow:0;-ms-flex-positive:0;flex-grow:0;-webkit-flex-shrink:1;-ms-flex-negative:1;flex-shrink:1}._hz9vr{-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;margin-left:5px}._elp6f{color:#999;display:inline-block;max-width:100%}
._82odm{-webkit-align-self:center;-ms-flex-item-align:center;align-self:center;display:block;-webkit-box-flex:0;-webkit-flex:none;-ms-flex:none;flex:none}._qtgjd{cursor:pointer}._15vpm{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-tap-highlight-color:transparent;-webkit-touch-callout:none}
._pg23k{background-color:#fafafa;border-radius:50%;-webkit-box-sizing:border-box;box-sizing:border-box;display:block;-webkit-box-flex:0;-webkit-flex:0 0 auto;-ms-flex:0 0 auto;flex:0 0 auto;overflow:hidden;position:relative}._pg23k::after{border:1px solid rgba(0,0,0,.0975);border-radius:50%;bottom:0;content:"";left:0;pointer-events:none;position:absolute;right:0;top:0}._jpwof{cursor:pointer}._rewi8{height:100%;width:100%}
._2g7d5{font-weight:600;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;padding-left:5px;margin-left:-5px}

/* header, header>div{-webkit-box-align:stretch;-webkit-align-items:stretch;-ms-flex-align:stretch;align-items:stretch;border:0 solid #000;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;margin:0;padding:0;} */
span{
	display: inline-block;
}
.btn-circle {
        width: 30px;
        height: 30px;
        text-align: center;
        padding: 6px 0;
        font-size: 18px;
        line-height: 1.428571429;
        border-radius: 15px;
      }
      label.btn.btn-default.btn-circle.focus {
	    outline: none;
}
.imgDiv{
position: relative;
background-color:black;
}
.imgDiv > video{
	position: absolute;
    max-width: 100%;
    max-height: 100%;
    width: auto;
    height: auto;
    margin: auto;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
}

.glyphicon {
	top: -1px;
}

 #wordchart{
 
 	height: 900px;

	margin: 20px
} 
</style>
<script>
//postid 가져와서 댓글달기
$(document).ready(function(){
	
	//이미지 class명부여
	//postModal("main");
	$("#carousel").on("mousewheel", function(e){
		var event = e.originalEvent;
		var delta = event.wheelDelta;
		
		if(delta>0){//휠 위로 하면 delta >0
			moveToSelected('prev');
		}
		else{//휠 위로 하면 delta <0
			moveToSelected('next');
		}
	});
	//   <- , -> 키보드 화살표로 이동
 	$(document).keydown(function(e) {
	  switch(e.which) {
	      case 37: // left
	      moveToSelected('prev');
	      break;
	      case 39: // right
	      moveToSelected('next');
	      break;
	      default: return;
	  }
	  e.preventDefault();
	}); 
	
 	$('#carousel article').not(".selected").click(function(e) {
		if($(this).hasClass("hideLeft")){
			moveToSelected($(".hideLeft:eq(0)"));	
		}else{
			moveToSelected($(this));
		}
	});
 	
 	// 워드 차트
 	var text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean bibendum erat ac justo sollicitudin, quis lacinia ligula fringilla. Pellentesque hendrerit, nisi vitae posuere condimentum, lectus urna accumsan libero, rutrum commodo mi lacus pretium erat. Phasellus pretium ultrices mi sed semper. Praesent ut tristique magna. Donec nisl tellus, sagittis ut tempus sit amet, consectetur eget erat. Sed ornare gravida lacinia. Curabitur iaculis metus purus, eget pretium est laoreet ut. Quisque tristique augue ac eros malesuada, vitae facilisis mauris sollicitudin. Mauris ac molestie nulla, vitae facilisis quam. Curabitur placerat ornare sem, in mattis purus posuere eget. Praesent non condimentum odio. Nunc aliquet, odio nec auctor congue, sapien justo dictum massa, nec fermentum massa sapien non tellus. Praesent luctus eros et nunc pretium hendrerit. In consequat et eros nec interdum. Ut neque dui, maximus id elit ac, consequat pretium tellus. Nullam vel accumsan lorem.';
 	var lines = text.split(/[,. ]+/g),
 	  data = Highcharts.reduce(lines, function (arr, word) {
 	    var obj = Highcharts.find(arr, function (obj) {
 	      return obj.name === word;
 	    });
 	    if (obj) {
 	      obj.weight += 1;
 	    } else {
 	      obj = {
 	        name: word,
 	        weight: 1
 	      };
 	      arr.push(obj);
 	    }
 	    return arr;
 	  }, []);

 	Highcharts.chart('wordchart', {
 	  series: [{
 	    type: 'wordcloud',
 	    data: data,
 	    name: '태그'
 	  }],
 	  title: {
 	    text: '인기 태그'
 	  }
 	});
 	
	
})


//css - 카테고리별 게시물 필터링
var all=$("#carousel").children(); //초기값
function cateClick(thisTag){
	  var customType=$(thisTag).data("filter");
	  console.log(customType);
	  //보고있던 이미지값 저장
	var currentTitle=$(".selected").children("div").children("img").data("postid");
	
	  $("#carousel").children().remove(); //다 지우기
 	  $("#carousel").prepend(all); //초기값 넣기
			
	  if(customType==="all") {
		  
	  }else{
		  $(".post").not("article[data-filter='" + customType +"']").remove(); //customType 일치하지않는 요소 삭제
	  }
	$("#carousel").children().removeClass(); //기존 클래스명 삭제
	moveToSelected($("#carousel").children().eq(1));
	//삭제한 다음에 들어가는거라서 다시 클릭함수를 선언함
	$('#carousel article').not(".selected").click(function() {
		if($(this).hasClass("hideLeft")){
			moveToSelected($(".hideLeft:eq(0)"));	
		}else{
			moveToSelected($(this));
		}
    });
	
	//이전 선택한 이미지가 있을 경우
	if($(".post>div>img[data-postid="+currentTitle+"]")[0]!=undefined){
		$(".post>div>img[data-postid="+currentTitle+"]").parent().parent().trigger("click");
	}
}
	
function moveToSelected(element) {
	console.log("moveToSelected");
	if (element == "next") {
		var selected = $(".selected").next();
	} else if (element == "prev") {
		var selected = $(".selected").prev();
	} else {
		var selected = element;
	}
	
	var next = $(selected).next();
	var prev = $(selected).prev();
	var prevSecond = $(prev).prev();
	var nextSecond = $(next).next();

	
	//기존 클래스 삭제, post클래스와 새로운 클래스 추가(2개 추가 구분은 공백)
	$(selected).removeClass().addClass("post selected");
	$(prev).removeClass().addClass("post prev");
	$(next).removeClass().addClass("post next");
	$(nextSecond).removeClass().addClass("post nextRightSecond");
	$(prevSecond).removeClass().addClass("post prevLeftSecond");
	$(nextSecond).nextAll().removeClass().addClass('post hideRight');
	$(prevSecond).prevAll().removeClass().addClass('post hideLeft');
	
	//클릭이벤트 할당
	$(".post").unbind("click");
	//postModal("main");
	$('#carousel article').not(".selected").click(function(e) {
		if($(this).hasClass("hideLeft")){
			moveToSelected($(".hideLeft:eq(0)"));	
		}else{
			moveToSelected($(this));
		}
	});
	
	/* prev, next 아이콘 클릭 사진이동  */
	$('#prev').click(function() {
	moveToSelected('prev');
	});
	$('#next').click(function() {
	moveToSelected('next');
	});
}

function prevPost(curObj){
	curObj.prev().click();
	$(".selected > div").children().click();
}
function nextPost(curObj){
	curObj.next().click();
	$(".selected > div").children().click();
}
</script>
</head>
<body>

  <div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url('./assets/img/bg2.jpg');">
    <div class="container">
	    <div class="row">
	    <div class="col-md-12">
	     <div class="col-md-2" style="float: right;">
     		<a class="nav-link" href="popular.ps">
              <i class="material-icons">format_list_bulleted</i> 전체보기
            </a>
		 </div>
		</div>
		</div>
        <div class="row" id="carousel">
		<c:forEach items="${imagelist}" var="imagelist"  varStatus='status'>
		<article 
		<c:choose>
		<c:when test="${status.index == 0}">
			class="post prev"
		</c:when>
		<c:when test="${status.index ==	1}">
			class="post selected"
		</c:when>
		<c:when test="${status.index ==	2}">
			class="post next"
		</c:when>
		<c:when test="${status.index ==	3}">
			class="post nextRightSecond"
		</c:when>
		<c:otherwise>
		class="post hideRight"
		</c:otherwise>
		</c:choose>
		>
		
		<c:forEach items="${imagelist}" var="fileInfo" varStatus='fileInfoListStatus'>
			<div class="card card-blog">
			    <div class="card-header card-header-image">
			        <a href="#pablo">
			            <img class="img" src="${fileInfo}">
			            <div class="card-title">
			                This Summer Will be Awesome
			            </div>
			        </a>
			    </div>
			    <div class="card-body">
			        <h6 class="card-category text-info">Fashion</h6>
			        <p class="card-description">
			            <!-- Don&apos;t be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens&#x2019; bed design but the back is... -->
			            	내용을 넣어주세요
			        </p>
			    </div>
			</div>
		
				</c:forEach>
	 	</article>
		</c:forEach>
	</div>
			 
    </div>
</div>

<div class="main main-raised">
    <div class="section section-basic">
      <div class="container">
    
		<div id="wordchart">
		</div>
		
		<h1>
		Hello world!  
		</h1>

		<P>  The time on the server is ${serverTime}. </P>

		<c:forEach var="u" items="${userList}">
			유저넘버 : ${u.userNo}<br>
			유저 아이디 : ${u.userId}<br>
			유저 이름 : ${u.userName}<br>
			유저 포인트 : ${u.point}<br>
			유저 가입날짜 : ${u.userReg}<br>
			유저 테이블 종류 번호 : ${u.tableNo}<br>
			유저 권한 : ${u.roleNo}<br>
			<br><br><br>
		</c:forEach>
		
		</div>
	</div>
</div>

</body>