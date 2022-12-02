<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script>
/** 우편번호 찾기 */
function execDaumPostcode() {
    daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
              $("#postcode").val(data.zonecode);
              $("#address").val(data.roadAddress);
            }
        }).open();
    });
}
</script>
<%
    Date day = new java.util.Date();
    day.setDate(day.getDate()+1);
    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
%>

<title>배송 정보</title>
</head>
<body>
	<jsp:include page="../top_menu.jsp" />
	<div class="jumbotron">
	   <div class="container">
		<h1 class="display-3">배송 정보</h1>
	   </div>
	</div>
	<div class="container">
	   <form action="order_info_process.jsp" class="form-horizontal" method="post">
	     <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
	     <div class="form-group row">
	       <label class="col-sm-2">성명</label>
	          <div class="col-sm-3">
	      	<input name="name" type="text" class="form-control" />
	          </div>
	    </div>
           <div class="form-group row">
	<label class="col-sm-2">배송일</label>
	<div class="col-sm-3">
		<input name="shippingDate" type="date" class="form-control" min="<%=date.format(day)%>" required/>
	</div>
	  </div>
	 <div class="form-group row">
	   <label class="col-sm-2">국가명</label>
         <div class="col-sm-3">
             <select id="country" name="country">
                 <option value="국가" selected="selected">국가</option>
                 <option value="한국">한국</option>
                 <option value="중국">중국</option>
                 <option value="일본">일본</option>
                 <option value="미국">미국</option>
             </select>
         </div>
           </div>
	 <div class="form-group m-form__group row">
        <label class="col-sm-2 col-form-label">주&nbsp;&nbsp;소</label>
            <div class="col-sm-2">
                <input name="zipCode" type="text" class="form-control m-input" name="postcode" id="postcode" placeholder="우편번호" readonly/>
            </div>
    <div class="col-sm-2 postcode-btn">
            <button type="button" class="btn btn-info m-btn--air" onclick="execDaumPostcode()">우편번호 찾기</button>
            </div>
                <label class="col-sm-2 offset-sm-5"></label>
                    <div class="col-sm-4 offset-sm-2">
                    <input name="addressName" type="text" class="form-control m-input m--margin-top-10" name="address" id="address" placeholder="도로명 주소" readonly/>
         </div>
     </div>
	<div class="form-group row">
	   <div class="col-sm-offset-2 col-sm-10 ">
	     <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
		<input type="submit" class="btn btn-primary" value="등록" />
		<a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
	   </div>
	</div>
  </form>
  </div>
</body>
</html>
	