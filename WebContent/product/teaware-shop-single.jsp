<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, domain.ProductTW"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../etc/frame-ver2.jsp"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>BINTEA &mdash; Enjoy your Tea</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  
  <link href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap" rel="stylesheet"> 

  <link rel="stylesheet" href="../fonts/icomoon/style.css">

  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/jquery-ui.css">
  <link rel="stylesheet" href="../css/owl.carousel.min.css">
  <link rel="stylesheet" href="../css/owl.theme.default.min.css">
  <link rel="stylesheet" href="../css/owl.theme.default.min.css">

  <link rel="stylesheet" href="../css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="../css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="../css/aos.css">
  <link href="../css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="../css/style.css">



</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  <div class="site-wrap">
  
<%	

    ArrayList<ProductTW> contentsTW = (ArrayList<ProductTW>)request.getAttribute("contentsTW");
    if(contentsTW !=null && contentsTW.size()!=0){
        for(ProductTW product : contentsTW){
%>
    
    <div class="site-section bg-primary py-5 page-title-wrap mt-5">
      <div class="container">

      
        <h1><%=product.getTw_name()%></h1>
      </div>
    </div>

    <div class="site-section mt-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="owl-carousel hero-slide owl-style">
              <img src="<%=product.getTw_img()%>" alt="Image" class="img-fluid">
              <img src="<%=product.getTw_img()%>" alt="Image" class="img-fluid">
              <img src="<%=product.getTw_img()%>" alt="Image" class="img-fluid">
            </div>
          </div>
          <div class="col-lg-5 ml-auto">
            <h2 class="text-primary"><%=product.getTw_name()%></h2>
            <p><%=product.getTw_story()%></p>

            <div class="mb-5">
              <div class="input-group mb-3" style="max-width: 200px;">
                <div class="input-group-prepend">
                  <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                </div>
                <input type="text" class="form-control text-center border mr-0" value="1" placeholder=""
                  aria-label="Example text with button addon" aria-describedby="button-addon1">
                <div class="input-group-append">
                  <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                </div>
              </div>
    
            </div>
            <p><a href="../cart.html" class="buy-now btn btn-sm height-auto px-4 py-3 btn-primary">Add To Cart</a></p>
<%
		}
	}else{
%>
			<tr>
				<td align='center' colspan="4" >데이터가 없음</td>
			</tr>
<%
	}
%>

          </div>
        </div>
      </div>
    </div>
    <div class="hero-2" style="background-image: url('../images/tea_2.jpg');">
     <div class="container">
        <div class="row justify-content-center text-center align-items-center">
          <div class="col-md-8">
            <span class="sub-title">Welcome</span>
            <h2>Wines For Everyone</h2>
          </div>
        </div>
      </div>
    </div>


  

    
   
 <jsp:include page="../etc/footer.jsp"/>   

  </div>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../js/jquery-ui.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.stellar.min.js"></script>
  <script src="../js/jquery.countdown.min.js"></script>
  <script src="../js/bootstrap-datepicker.min.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/aos.js"></script>
  <script src="../js/jquery.fancybox.min.js"></script>
  <script src="../js/jquery.sticky.js"></script>
  <script src="../js/jquery.mb.YTPlayer.min.js"></script>


  <script src="../js/main.js"></script>

</body>

</html>