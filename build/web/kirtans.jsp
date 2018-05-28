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
</header>
        <main role="main">
      <div class="container">
  <br/><br/> <br/>
  <div><h3><u>Kirtans</u></h3></div>
  <div class="row">
       <%
            
            
            String urls = "https://www.genyoutube.net/search.php?q=amritvela%20trust";
      Document documents = Jsoup.connect(urls).get();
      
      
      for(int i=0;i<21;i++)
      { 
       Element linkdss = documents.select(".row .duration").get(i);
      //out.println("Heading :"+linkdss.text()+"<br/>");
      Element details = documents.select(".detail .narrowtitle a").get(i);
     
       Element publisher = documents.select(".detail .pull-left a").get(i);
      
       
       
       
       Element ids = documents.select(".row .vidbox").get(i);
       
       Element detail = documents.select(".detail").get(i);
       
       Element views = documents.select(".label-views").get(i);
       
       Element linkds = documents.select(".row img").get(i);

       
       %>
    <div class="col-md-4">
      <div class="thumbnail">
        <%out.println("<a href=full.jsp?search="+ids.attr("id")+">");%>
          <%out.println("<img src='"+linkds.attr("src") +"' id='myimage' style='width:100%;'>");%>
          <div class="caption">
              <p style="position: relative;"><%out.println("<a href=full.jsp?search="+ids.attr("id")+">"+details.text()+"</a>");%></p>
              <p id="duration" style="float: right;margin-top: -40%;position: absolute;color: white;"><%out.println("<br/>"+linkdss.text());%></p>
              <p style="font-size: 14px;">Publisher: <%out.println(publisher.text());%></p>
              <p></p>
              <p style="font-size: 12px;"> <%String txt=detail.text().replace(details.text()+" AMRITVELA TRUST ", "");
              
              out.print(txt.replace(views.text(), " "));
              %><span style="float: right;"><i class="glyphicon glyphicon glyphicon-eye-open"></i> <%out.print(views.text());%></span></p>
              <!--<p><%/*
              Element days = documents.select("div .pull-left").get(i+3);
        if (days.select("a").isEmpty()) {
            out.print(days.text());
            session.setAttribute("sibling", days.nextElementSibling());
        }else
        {
                if(!session.getAttribute("sibling").toString().equals(days.nextElementSibling().toString())){
                    
                    out.print(days.nextElementSibling());
                }else session.setAttribute("sibling", days.nextElementSibling());
            }
         
        }
        
    
             */ %></p>-->
          </div>
        <%out.print("</a>");%>
      </div>
    </div>
    <%}%>
  </div>
  
</div>
        
         
       <%   
       //out.print("<img src='"+linkds.attr("src") +"'>");
          %>
          <%/*out.println("<img src='"+linkds.attr("src") +"' id='myimage'>");
          out.println("<br/>"+linkdss.text());
out.println("<a href=full.jsp?search="+ids.attr("id")+">"+details.text()+"</a>");
out.println(publisher.text());
//out.print(ids.attr("id"));
//out.print(detail.text());
out.print(views.text());
}*/%>
      <!-- END site-content -->
   <!-- END site-container -->
   <div class="overlay"></div></main>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  
  

<script  src="js/nav.js"></script>
    
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    


</body>

</html>
