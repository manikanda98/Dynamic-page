<%@page import="com.blog.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <!-- basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- mobile metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- site metas -->
   <title>About</title>
   <link rel="icon" type="image/png" href="/images/favicon.png">
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- bootstrap css -->
   <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
   <!-- style css -->
   <link rel="stylesheet" type="text/css" href="css/style.css">
   <!-- Responsive-->
   <link rel="stylesheet" href="css/responsive.css">
   <!-- fevicon -->
   <link rel="icon" href="images/fevicon.png" type="image/gif" />
   <!-- Scrollbar Custom CSS -->
   <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
   <!-- Tweaks for older IEs-->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <!-- owl stylesheets -->
   <link rel="stylesheet" href="css/owl.carousel.min.css">
   <link rel="stylesoeet" href="css/owl.theme.default.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen">
</head>

<body>

	<%!User user = null;%>

	<%!String loginStatus;%>

	<%
	user = (User) request.getSession().getAttribute("user");
	%>

	<%
	loginStatus = ((user == null) ? "<li class=\"nav-item\"><a class=\"nav-link\" href=\"login.jsp\">Login</a></li>" : 
		(" <li class=\"nav-item dropdown\"><a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Hi "
			+ user.getUserName() + "</a><div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\"><a class=\"dropdown-item\" href=\"dashboard.jsp\">Profile</a> <a class=\"dropdown-item\" href=\"notification.jsp\">Notifications</a> "
			+ ((user.getRole() == "admin") ? "<a class=\"dropdown-item\" href=\"adminportal.jsp\">Admin Protal</a>" :"")
			+ "<div class=\"dropdown-divider\"></div><form method=\"post\" action=\"LogOutServlet\"><input type=\"submit\" class=\"dropdown-item\" value=\"LogOut\"><form></div></li>"));
	%>

   <!-- header section start -->
   <div class="header_section">
      <div class="container-fluid header_main">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="logo" href="index.jsp"><img src="images/logo.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
               aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item">
                     <a class="nav-link" href="index.jsp">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="#">About</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="blog.jsp">Blog</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="contact.jsp">Contact Us</a>
                  </li>
                  <%=loginStatus%>
               </ul>
            </div>
         </nav>
      </div>
   </div>
   <!-- about section start -->
   <div class="about_section layout_padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-sm-12">
               <div class="about_img"><img src="images/about-img.png"></div>
               <div class="like_icon"><img src="images/like-icon.png"></div>
               <p class="post_text">Post By : 09/06/2019</p>
               <h2 class="most_text">Most Awesome Blue Lake With Snow <br>Mountain</h2>
               <p class="lorem_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                  incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis</p>
               <div class="social_icon_main">
                  <div class="social_icon">
                     <ul>
                        <li><a href="#"><img src="images/fb-icon.png"></a></li>
                        <li><a href="#"><img src="images/twitter-icon.png"></a></li>
                        <li><a href="#"><img src="images/instagram-icon.png"></a></li>
                     </ul>
                  </div>
                  <div class="read_bt"><a href="#">Read More</a></div>
               </div>
            </div>
            <div class="col-lg-4 col-sm-12">
               <div class="image_5"><img src="images/img-5.png"></div>
               <h1 class="about_taital">About Us</h1>
               <p class="about_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                  incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis</p>
               <div class="read_bt_1"><a href="#">Read More</a></div>
            </div>
         </div>
      </div>
   </div>
   <!-- about section end -->
   <!-- footer section start -->
   <div class="footer_section layout_padding margin_top_90">
      <div class="container">
         <!-- <div class="footer_logo"><a href="index.jsp"><img src="images/footer-logo.png"></a></div> -->
         <div class="footer_menu">
            <ul>
               <li><a href="index.jsp">Home</a></li>
               <li><a href="about.jsp">About</a></li>
               <li><a href="blog.jsp">Blog</a></li>
               <li><a href="contact.jsp">Contact us</a></li>
               <li><a href="login.jsp">Login</a></li>
            </ul>
         </div>
         <div class="footer_menu">
            <ul>
               <li>
                  <div class="contact_menu">
                     <ul>
                        <li><a href="#"><img src="images/call-icon.png"></a></li>
                        <li><a href="#">Call : +01 1234567890</a></li>
                     </ul>
                  </div>
               </li>
               <li>
                  <div class="contact_menu">
                     <ul>
                        <li><a href="blog.jsp"><img src="images/mail-icon.png"></a></li>
                        <li><a href="features.jsp">demo@gmail.com</a></li>
                     </ul>
                  </div>
               </li>
            </ul>
         </div>
      </div>
   </div>
   <!-- footer section end -->
   <!-- copyright section start -->
   <!-- <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">Copyright 2020 All Right Reserved By.<a href="https://html.design"> Free  html Templates</a></p>
         </div>
      </div> -->
   <!-- copyright section end -->
   <!-- Javascript files-->
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/jquery-3.0.0.min.js"></script>
   <script src="js/plugin.js"></script>
   <!-- sidebar -->
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="js/custom.js"></script>
   <!-- javascript -->
   <script src="js/owl.carousel.js"></script>
   <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
</body>

</html>