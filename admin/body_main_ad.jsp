<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "dto.Product"%> <!-- 패키지 연동 -->
<%@ page import="dao.ProductRepository"%>
<%@ page import = "java.util.ArrayList"%>

<jsp:useBean id="ProductDAO" class="dao.ProductRepository" scope="session"/>
    
    <%! String greeting = "현재 페이지는 축구화 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
    <%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>

        	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-black">
                        <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">축구화 이미지</h5>
                        <p class="card-text">출처 : 크레이지 11</p>
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
        
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
