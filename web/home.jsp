<%-- 
    Document   : index
    Created on : May 26, 2018, 3:13:54 PM
    Author     : Dell
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet'>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/nav.css">
  <link rel="stylesheet" href="css/home.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:300'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.6/animate.min.css'>
    </head>
    <body style="overflow-y: hidden;">
        

    
        <nav class="sidebar" style="overflow-y: hidden;">
  <div class="nav-header">
    <div class="logo-wrap">
        <a class="logo-icon" href="http://www.mediahawkz.com/"><img alt="logo-icon" src="logowrap.png" width="150" style="margin-left: 18%;"></a>
        <a class="logo-text" href="http://www.mediahawkz.com/"><img alt="logo-icon" src="logo.png" width="190" style="margin-left: 5%;"></a>
    </div>

      <div class="nav-search" style="margin-top: -7%;">
      <div class="search">
          <form action="search.jsp" method="post">
          <i class='material-icons'>search</i>
        <input type="search" name="search" placeholder="Search">
          </form>
      </div>
    </div>
  </div>
            <ul class="nav-categories ul-base">
                <li><a href="live.jsp"><span style="font-size: 15px;">Live Kirtan</span></a></li>
                <li><a href="kirtans.jsp"><span style="font-size: 15px;">Kirtans</span></a></li>
                <li><a href="audio.jsp"><span style="font-size: 15px;">Audios</span></a></li>
                <li><a href="photos.jsp"><span style="font-size: 15px;">Photos</span></a></li>
                <li><a href="events.jsp"><span style="font-size: 15px;">Events</span></a></li>
                <li><a href="donation.jsp"><span style="font-size: 15px;">Donation</span></a></li>
  </ul>
  
  
</nav>
      <header>
  <div class="header-inner clearfix">
    <div class="nav-btn nav-slider">
      <i class="material-icons">menu</i>
    </div>
    <div class="header-logo">
        <a href="index.jsp" style="color: white;text-align: center;font-size: 17px;">AMRITVELA TRUST</a>
    </div>
    <div class="header-categories">
      <ul class="ul-base">
        <li class="dropdown">
          <a class="dropdown-toggle" href="#"><span>Menu</span> <i class="material-icons">keyboard_arrow_down</i></a>
          <ul class="dropdown-menu ul-base">
            <li><a href="live.jsp"><span style="font-size: 15px;">Live Kirtan</span></a></li>
                <li><a href="kirtans.jsp"><span style="font-size: 15px;">Kirtans</span></a></li>
                <li><a href="audio.jsp"><span style="font-size: 15px;">Audios</span></a></li>
                <li><a href="photos.jsp"><span style="font-size: 15px;">Photos</span></a></li>
                <li><a href="events.jsp"><span style="font-size: 15px;">Events</span></a></li>
                <li><a href="donation.jsp"><span style="font-size: 15px;">Donation</span></a></li>
           
          </ul>
        </li>
      </ul>
    </div>
    <div class="header-search">
      <div class="search">
          <form action="search.jsp" method="post">
        <i class="material-icons">search</i>
        <input type="search" name="search" placeholder="Search">
        
          </form>
      </div>
    </div>
    
  </div>
</header>
        <div id="circ" style="font-size: 30px;">
  <ul>
    <li class="animated zoomIn">
      <div class="back"></div>
      <div class="icon" style="color: #ba1010;">
          <i class="fa fa-television"></i>
          <p style="font-size: 15px;">Live</p>
      </div>
    </li>
    <li class="animated zoomIn delayone">
      <div class="back"></div>
      <div class="icon" style="color: #ba1010;">
        <i class="fa fa-play-circle"></i>
        <p style="font-size: 15px;">Kirtans</p>
      </div>
    </li>
    <li class="animated zoomIn delaytwo">
      <div class="back"></div>
      <div class="icon" style="color: #ba1010;">
          <i class="fa fa-file-audio-o"></i>
          <p style="font-size: 15px;">Audios</p>
      </div>
    </li>
    <li class="animated zoomIn delaythree">
      <div class="back"></div>
      <div class="icon" style="color: #ba1010;">
        <i class="fa fa-image"></i>
        <p style="font-size: 15px;">Photos</p>
      </div>
    </li>
    <li class="animated zoomIn delayfour">
      <div class="back"></div>
      <div class="icon" style="color: #ba1010;">
        <i class="fa fa-calendar-check-o"></i>
        <p style="font-size: 15px;">Events</p>
      </div>
    </li>
    <li class="animated zoomIn delayfive">
      <div class="back"></div>
      <div class="icon" style="color: #ba1010;">
        <i class="fa fa-gift"></i>
        <p style="font-size: 15px;">Donation</p>
      </div>
    </li>
  </ul>
  
</div>
      <!-- END site-content -->
   <!-- END site-container -->
   <div class="overlay"></div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  
  

<script  src="js/nav.js"></script>
    
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    


</body>

</html>
