<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="EGAGFS.ContactUs" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Offshore Product Development | Business Intelligence Consulting | Web Application Security</title>

<link href="http://aretecon.com/css/animate.css" rel="stylesheet" type="text/css" media="all"/>
<link href="http://aretecon.com/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="http://aretecon.com/css/custom.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>

<section class="topHeader">
<div class="container">
<ul class="list-inline text-right">
<li><img src="http://aretecon.com/images/pipe.gif" width="2" height="20"></li>
<li><a href="">Sitemap</a></li>
<li><img src="http://aretecon.com/images/pipe.gif" width="2" height="20"></li>
<li><a href="">E-mail us</a></li>
<li><img src="http://aretecon.com/images/pipe.gif" width="2" height="20"></li>
</ul>	
</div>	
</section>
<section>
<nav class="navbar navbar-default ">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menubar" aria-expanded="true">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html"><img src="http://aretecon.com/images/logo.png" class="img-responsive" alt="" /></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="menubar">
      <ul class="nav navbar-nav navbar-rght">
        <li><a href="index.html">Home <span class="sr-only">(current)</span></a></li>

          <li class="dropdown">
          <a href="company-profile.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About Us <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="company-profile.html">About us</a></li>
            <li role="separator" class="divider"></li>
           <li><a href="team.html">Our Team</a></li>
            <li role="separator" class="divider"></li>
         <li><a href="mission-and-vision.html">Our Mission and Vision</a></li>
            <li role="separator" class="divider"></li>
             <li><a href="core-values.html">Core Values</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="industries.html">Industries</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="clients.html">Our Clients</a></li>
            <li role="separator" class="divider"></li>
            <!--<li><a href="partners.html">Our Partners</a></li>-->
            <!--<li role="separator" class="divider" ></li>-->
          
          </ul>
        </li>
        
        
        
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="invest-in-india.html">Invest In India</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Merger-and-acquisition.html">Merger & Acquisition</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="management-consultancy.html">Management Consultancy</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="information-technology.html">Information Technology</a></li>
            <li role="separator" class="divider"></li>
          
          </ul>
        </li>
        <li><a href="resources.html">Resources</a></li>
        <li class=""><a href="current-opportunities.html">Current Opportunities</a></li>
        <li><a href="news.html">News</a></li>
         <li class="active"><a href="contactus.html">Contact Us</a></li>
     
      </ul>
      
    
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</section>
<section>
<div class="container">
<div class="warp">
<div class="page-title-img">
	<img src="http://aretecon.com/images/joint-v-o.jpg" class="img-responsive wow zoomIn animated" style="visibility: visible; animation-name: zoomIn;">
	<div class="page-title-data">Contact Us</div>
</div>
<h3 class="mainheading">Contact Us</h3>

<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">
    <div class="form-area">
  
        <form role="form" runat="server">       
                    <h3 class="blue Font20" >Contact Form</h3>
                        <br /> 
    				<div class="form-group">
						<input type="text" class="form-control" id="txtname" runat="server" name="name" placeholder="Name" required >
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="txtemail" name="email" runat="server" placeholder="Email" required >
					</div>
					<div class="form-group">
						<input i type="text" class="form-control" id="txtmobile" runat="server" name="mobile" placeholder="Mobile Number" required >
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="txtsubject" name="subject" runat="server" placeholder="Subject" required >
					</div>
                    <div class="form-group">
                    <textarea class="form-control" type="textarea" id="txtmessage" placeholder="Message" rows="7" runat="server"></textarea>
                        <%--<span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>--%>                    
                    </div>
            <%--<button type="button" class="btn btn-primary pull-right" id="btnsubmit" onclick="btnSubmit_Click"> Submit</button>--%>
                   <asp:Button ID="btnSendEmail" OnClick="btnSubmit_Click" class="btn btn-primary pull-right " runat="server" Text="Submit" />
            </form>
          <%--  <asp:Label ID="lblMsg" runat="server">maxlength="140"</asp:Label>--%>
               
      </div>
    </div> <!--end span-->
    <div class="col-md-6 col-sm-6 col-xs-12">
    <div class="address">
   
   <h3 class="blue Font20" >Contact Address</h3>
    <br />
   <img src="http://aretecon.com/images/ic-loc.png" class="pull-left" alt="ic-loc" /><h4 class="addsubheading orange ">Address</h4>
   <p class="bdr-one">
                    Arete Consultants Pvt. Ltd.<br>
                    302, South Ex. Plaza I  NDSE Part – II <br> New Delhi – 110049, India.
                </p>
                <br />
     <img src="http://aretecon.com/images/ic-call.png" class="pull-left" alt="ic-loc" /><h4 class="addsubheading orange">Phone | Email</h4>
     <p class="bdr-one"> T  : 91  11  2625 6363<br>
     T  : 011-26263151<br>
E  : <a href="/cdn-cgi/l/email-protection#bad9d5d4cedbd9cefadbc8dfcedfd9d5d494d9d5d7"><span class="__cf_email__" data-cfemail="7d1e1213091c1e093d1c0f1809181e1213531e1210">[email&#160;protected]</span></a><br><span class="same">W</span>  : <a href="http://www.aretecon.com" target="_blank">http://www.aretecon.com</a>
                </p>
                <br />
                 <img src="http://aretecon.com/images/ic-time.png" class="pull-left" alt="ic-loc" /><h4 class="addsubheading orange">Working Hours</h4>
                 <p class="bdr-one"><b>Mon</b> - <b>Sat</b> :- 10am - 7pm</p>
    </div>
    
    </div><!--end span-->
</div> <!--end row divv-->

 <div id="map" style="width:100%;height:500px;"> </div>
</div> <!--End warp div-->

</div> <!--End container div-->
</section>

<section class="top-footer">
<div class="container">
<footer>
<ul class="list-inline">
<li><a href="invest-in-india.html" class="copyright">Invest In India</a></li>
<li><a href="merger-and-acquisition.html" class="copyright">Merger & Acquisition</a></li>
<li><a href="management-consultancy.html" class="copyright">Management Consultancy</a></li>
<li><a href="information-technology.html" class="copyright">Information Technology</a></li>
<li><a href="link-exchange.html" class="copyright">Link Exchange</a></li>
<li><a href="downloads/Certificate%20of%20ARETE%20for%20ISO9001-2008.pdf" target="_blank" class="copyright">ISO 9001:2008 Certified</a></li>
<li><a href="sitemap.xml" class="copyright"> XML-Sitemap</a></li>
<li><a href="/cdn-cgi/l/email-protection#5b2c3e39363a282f3e291b3a293e2f3e38343575383436" class="copyright"><span class="__cf_email__" data-cfemail="710614131c1002051403311003140514121e1f5f121e1c">[email&#160;protected]</span></a></li>
<li><a href="http://www.aretesoftwares.com/" target="_blank" class="copyright">Arete Software.com</a></li>
<!--<li><a href="http://www.aretecon.com/aretesoftwares/arete_innovation&amp;incubation_centre.html" target="_blank" class="copyright">Arete Innovation &amp; Incubation Centre</a></li>-->

</ul>
</footer>

</div>
</section><!--end secyion-->
<section class="footer-section">
<div class="container">
<p class="text-center" style="color:#fff; font-size:12px; margin-bottom:0px; padding:5px 0px;">© Copyright - 2008 Arete Consultants Pvt. Ltd. All rights reserved. </p>
</div><!-- End container Div-->
</section><!--end secyion-->

<script data-cfasync="false" src="http://aretecon.com/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="http://aretecon.com/js/jquery.js" type="text/javascript" ></script>
<script src="http://aretecon.com/js/bootstrap.js" type="text/javascript"></script>
<script src="http://aretecon.com/js/wow.js" type="text/javascript"></script>
<script src="http://aretecon.com/js/custom.js" type="text/javascript"></script>
 <script>
        function myMap() {
            var myCenter = new google.maps.LatLng(28.562210, 77.219552);
            var mapCanvas = document.getElementById("map");
            var mapOptions = { center: myCenter, zoom: 19};
            var map = new google.maps.Map(mapCanvas, mapOptions);
            var marker = new google.maps.Marker({ position: myCenter });
            marker.setMap(map);
        }
</script>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBQHQ4b69rMLkUzch4hjA1wYCHR9DLWRTM&callback=myMap"
  type="text/javascript"></script>
</body> 
</html>