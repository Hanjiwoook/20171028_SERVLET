<%@ page contentType="text/html;charset=utf-8"%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">축구화</a> 
        <a class="dropdown-item" herf="#">풋살화</a>
        <a class="dropdown-item" herf="#">운동화/슬리퍼</a>
        <a class="dropdown-item" herf="#">의류/기능성</a>
        <a class="dropdown-item" herf="#">단체/유니폼</a>
        <a class="dropdown-item" herf="#">용품</a>
        <a class="dropdown-item" herf="#">유소년</a>
     </div>
	</div>
    
    <div>
        <img src="image\banner_img_03.gif" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
            <a class="navbar-brand" href="./index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="login/login_user.jsp">로그인</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>
		</div>
	</div>
</nav>
