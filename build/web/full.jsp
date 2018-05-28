<%-- 
    Document   : full
    Created on : May 26, 2018, 5:54:45 PM
    Author     : Dell
--%>

<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:300'>
    </head>
    <body>
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
</header><br/><br/><br/>
 <main role="main">
      <div class="container">
       <%
            String param=request.getParameter("search");
        String urls = "https://video.genyoutube.net/"+param;
      Document documents = Jsoup.connect(urls).get();

      
          //Element linkdss = documents.select(".row .duration").get(i);
      //out.println("Heading :"+linkdss.text()+"<br/>");
      //Element details = documents.select(".detail .narrowtitle a").get(i);
     
       Element heading = documents.select(".container h1").get(0);
      
       
       
       Element linkds = documents.select(".container iframe").get(0);
       //out.print("<iframe src='"+linkds.attr("src") +"'>");
        %> 
        
        <div class="row">
            <div class="col-sm-12">
                <div class="embed-responsive embed-responsive-16by9">
        <iframe src='<%=linkds.attr("src")%>' allowfullscreen="" frameborder="0" ></iframe>
        </div></div>
        </div><br/>
        <div class="row">
            <div class="col-sm-12">
                <p><%out.print(heading.text()); %></p> 
            </div>
        </div><br/><br/>
            <p style="font-weight: bold;font-size: 20px;">Downloads</p>
            <div class="row">     
        <%
        for(int i=0;i<4;i++)
        {
Element downloadlink = documents.select(".downbuttonbox a").get(i);
            Element icon = documents.select(".downbuttonbox i").get(i);
    Element download = documents.select(".downbuttonbox").get(i);
    //out.print("<a href="+downloadlink.attr("href")+">"+download.text()+"<i class='"+icon.attr("class")+"'</i></a><br/>");
    //out.print();
    %>
    <div class="col-sm-12">
        <%
        out.print("<i class='"+icon.attr("class")+"'></i>&nbsp;&nbsp;<a href="+downloadlink.attr("href")+" style='text-decoration: none;color: black;'>"+download.text()+"</a><br/>");%>
    </div>
    
    
       <% }%>
      </div> <!-- END container -->
    </div> <!-- END site-content -->
    <!-- END site-container -->
 <div class="overlay"></div> </main>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  
  

    <script  src="js/index.js"></script>
        
        
        
        
        
        
       <script  src="js/nav.js"></script>
    </body>
</html>
