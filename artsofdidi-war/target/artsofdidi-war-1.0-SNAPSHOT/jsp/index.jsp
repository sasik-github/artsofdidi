<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Arts of DiDi</title>
<meta charset="utf-8">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="grey">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
<link href="images/favicon.png" rel="shortcut icon">
<link href="images/favicon.png" rel="bookmark icon">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min-latest.js"></script>
<script src="js/jquery.nivo.slider.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/custom.js"></script>
<script>
$(document)
    .ready(function () {
    var $container = $('#portfolio-container');
    // initialize Isotope
    $container.isotope({
        // options...
        resizable: false, // disable normal resizing
        layoutMode: 'fitRows',
        itemSelector: '.element2',
        animationEngine: 'best-available',
        // set columnWidth to a percentage of container width
        masonry: {
            columnWidth: $container.width() / 5
        }
    });
    // update columnWidth on window resize
    $(window)
        .smartresize(function () {
        $container.isotope({
            // update columnWidth to a percentage of container width
            masonry: {
                columnWidth: $container.width() / 5
            }
        });
    });
    $container.imagesLoaded(function () {
        $container.isotope({
            // options...
        });
    });
    $('#portfolio-filter a')
        .click(function () {
        var selector = $(this)
            .attr('data-filter');
        $container.isotope({
            filter: selector
        });
        return false;
    });
});
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-50652245-1', 'artsofdidi.appspot.com');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');

</script>
<script charset="utf-8">
$(document)
    .ready(function () {
    $("a[rel^='prettyPhoto']")
        .prettyPhoto();
});
</script>
</head>
<body>
<div id="header">
  <!-- Start navigation area -->
  <div id="navigation">
    <div id="navigation_wrap">
      <!-- Start contact info area -->
      <div id="conteactinfo"><strong>Email:</strong> dart_sas@mail.ru</div>
      <!-- End contact info area -->
      <!-- Start navigation -->
      <div id="navi">
        <!-- <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="#">Features</a>
            <ul>
              <li><a href="buttons-buttonshapes.html">Buttons</a></li>
              <li><a href="columns.html">Columns</a></li>
              <li><a href="icons-and-lists.html">Icons &amp; Lists</a></li>
              <li><a href="notifications.html">Notifications</a></li>
              <li><a href="tabs-and-toggles.html">Tabs &amp; Toggles</a></li>
              <li><a href="#">Other</a>
                <ul>
                  <li><a href="#">Demo Tab</a></li>
                  <li><a href="#">Demo Tab</a></li>
                  <li><a href="#">Demo Tab</a></li>
                  <li><a href="#">Demo Tab</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="blog.html">Blog</a>
            <ul>
              <li><a href="blog-left.html">Left Column Blog</a></li>
              <li><a href="blog.html">Right Column Blog</a></li>
              <li><a href="blog-post.html">Post</a>
                <ul>
                  <li><a href="left-blog-post.html">Left Column Post</a></li>
                  <li><a href="blog-post.html">Right Column Post</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="portfolio.html">Portfolio</a>
            <ul>
              <li><a href="portfolio-2-column.html">2 Columns</a></li>
              <li><a href="portfolio-3-column.html">3 Columns</a></li>
              <li><a href="portfolio.html">4 Columns</a></li>
            </ul>
          </li>
          <li><a href="contact-us.html">Contact Us</a></li>
        </ul> -->
      </div>
      <!-- End navigation -->
    </div>
  </div>
  <!-- End navigation area -->
  <div class="clear"></div>
  <!-- Start Social & Logo area -->
  <div id="header_small">
    <!-- Start Social area -->
    <div class="social">
      <ul>
        <li><a href="#" class="social-google"></a></li>
        <li><a href="#" class="social-facebook"></a></li>
        <li><a href="#" class="social-twitter"></a></li>
        <li><a href="#" class="social-linkedin"></a></li>
        <li><a href="#" class="social-forrst"></a></li>
        <li><a href="#" class="social-dribbble"></a></li>
      </ul>
    </div>
    <!-- End Socialarea -->
    <!-- Start Logo area -->
    <div id="logo"> <a href="index.html">Arts Of DiDi</a> </div>
    <!-- End Logo area -->
  </div>
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start H1 Title -->
  <div class="titlesnormal">
    <h1>Зайкины произведения искусств</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Box -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
        <!-- Start None Split Section -->
        <div class="splitnone">
          
          <!-- Start Portfolio Filter -->
          <div id="portfolio-filter">
            <ul>
              <li><strong>Filter: </strong></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter="*">show all</a></li>
              <!--<li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".web">Web Design</a></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".graphic">Graphic Design</a></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".print">Print Design</a></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".logo">Logo Design</a></li>-->
            </ul>
          </div>
          <!-- End Portfolio Filter -->
        </div>
        <!-- End None Split Section -->
      </div>
      <span class="box-arrow"> </span> </div>
    <!-- End Box -->
    <!-- Start Box -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
        <!-- Start None Split Section -->
        <div class="splitnone">
          <div id="portfolio-container">
            <!-- Start 4 column portfolio -->
                  <!-- <div class="element2 web">
                    <div class="portfoliowrap">
                      <div class="title">Tuts Premium<span class="titlearrow"></span></div>
                      <div class="portfolioimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto"><img src="images/latest-projects/project01.jpg" alt=""></a></div>
                      <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc<span class="textarrow"></span></div>
                    </div>
                  </div> -->
            <div class="element2 graphic">
              <div class="portfoliowrap">
                <div class="title">Ваза с сушками<span class="titlearrow"></span></div>
                <div class="portfolioimage"><a href="arts/61VxR-NlCSE.jpg" rel="prettyPhoto"><img src="arts/61VxR-NlCSE.jpg" alt=""></a></div>
                <div class="text"><span class="textarrow"></span></div>
              </div>
            </div>
            <div class="element2 logo">
              <div class="portfoliowrap">
                <div class="title">Трава в горшке<span class="titlearrow"></span></div>
                <div class="portfolioimage"><a href="arts/ap9XvS0q_Jg.jpg" rel="prettyPhoto"><img src="arts/ap9XvS0q_Jg.jpg" alt=""></a></div>
                <div class="text"><span class="textarrow"></span></div>
              </div>
            </div>
            <div class="element2 print">
              <div class="portfoliowrap">
                <div class="title">Белка с сусликом<span class="titlearrow"></span></div>
                <div class="portfolioimage"><a href="arts/CKuwdZAedWA.jpg" rel="prettyPhoto"><img src="arts/CKuwdZAedWA.jpg" alt=""></a></div>
                <div class="text"><span class="textarrow"></span></div>
              </div>
            </div>
            <div class="element2 web">
              <div class="portfoliowrap">
                <div class="title">Бутылка Рома<span class="titlearrow"></span></div>
                <div class="portfolioimage"><a href="arts/MsI3lFyIrI0.jpg" rel="prettyPhoto"><img src="arts/MsI3lFyIrI0.jpg" alt=""></a></div>
                <div class="text"><span class="textarrow"></span></div>
              </div>
            </div>
            <div class="element2 web">
              <div class="portfoliowrap">
                <div class="title">Кувшин<span class="titlearrow"></span></div>
                <div class="portfolioimage"><a href="arts/UBbBzlXR5_U.jpg" rel="prettyPhoto"><img src="arts/UBbBzlXR5_U.jpg" alt=""></a></div>
                <div class="text"><span class="textarrow"></span></div>
              </div>
            </div>
            <div class="element2 graphic web">
              <div class="portfoliowrap">
                <div class="title">Абстракция на тему бытия человечества<span class="titlearrow"></span></div>
                <div class="portfolioimage"><a href="arts/XspxaosbYPw.jpg" rel="prettyPhoto"><img src="arts/XspxaosbYPw.jpg" alt=""></a></div>
                <div class="text"><span class="textarrow"></span></div>
              </div>
            </div>
            <div class="element2 Web">
              <div class="portfoliowrap">
                <div class="title">Клевер<span class="titlearrow"></span></div>
                <div class="portfolioimage"><a href="arts/y6OfIR6SQc4.jpg" rel="prettyPhoto"><img src="arts/y6OfIR6SQc4.jpg" alt=""></a></div>
                <div class="text"><span class="textarrow"></span></div>
              </div>
            </div>
            <c:forEach items="${items}" var="item">
              <div class="element2 ${item.tag}}">
                  <div class="portfoliowrap">
                    <div class="title">${item.title}<span class="titlearrow"></span></div>
                    <div class="portfolioimage"><a href="${item.path}" rel="prettyPhoto"><img src="${item.path}" alt=""></a></div>
                    <div class="text">${item.description}<span class="textarrow"></span></div>
                  </div>
              </div>
            </c:forEach>
                  <!-- <div class="element2 web">
                    <div class="portfoliowrap">
                      <div class="title">Tuts Premium<span class="titlearrow"></span></div>
                      <div class="portfolioimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto"><img src="images/latest-projects/project03.jpg" alt=""></a></div>
                      <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc<span class="textarrow"></span></div>
                    </div>
                  </div>
                  <div class="element2 web">
                    <div class="portfoliowrap">
                      <div class="title">Themeforest<span class="titlearrow"></span></div>
                      <div class="portfolioimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto"><img src="images/latest-projects/project01.jpg" alt=""></a></div>
                      <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc<span class="textarrow"></span></div>
                    </div>
                  </div>
                  <div class="element2 graphic web">
                    <div class="portfoliowrap">
                      <div class="title">Graphicriver<span class="titlearrow"></span></div>
                      <div class="portfolioimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto"><img src="images/latest-projects/project02.jpg" alt=""></a></div>
                      <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc<span class="textarrow"></span></div>
                    </div>
                  </div>
                  <div class="element2 Web">
                    <div class="portfoliowrap">
                      <div class="title">Tuts Premium<span class="titlearrow"></span></div>
                      <div class="portfolioimage"><a href="images/latest-projects/larger-images/largeimage.jpg" rel="prettyPhoto"><img src="images/latest-projects/project03.jpg" alt=""></a></div>
                      <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non ipsum nunc<span class="textarrow"></span></div>
                    </div> -->
            </div>
            <!-- End 4 column portfolio -->
          </div>
        </div>
        <!-- End None Split Section -->
      </div>
      <span class="box-arrow"></span> </div>
    <!-- End Box -->
  </div>
  <!-- End Main Body Wrap -->
</div>
<!-- Start Footer -->
<div id="footer">
  <!-- Start Footer Top -->
  
  <!-- End Footer Top -->
  <div class="clear"></div>
  <!-- Start Footer Bottom -->
  <div id="footerbottom">
    <div class="footerwrap">
      <!-- Start Copyright Div -->
      <div id="copyright">&copy;2014.ArtsOfDidi - All rights reserved! - Theme by <a target="_blank" href="http://vk.com/dinok7">sasik</a></div>
      <!-- PLEASE SUPPORT US BY LEAVING THIS LINK -->
      <!-- End Copyright Div -->
      <!-- Start Social area -->
      <div class="socialfooter">
        <ul>
          <li><a href="#" class="social-google"></a></li>
          <li><a href="#" class="social-facebook"></a></li>
          <li><a href="#" class="social-twitter"></a></li>
          <li><a href="#" class="social-linkedin"></a></li>
          <li><a href="#" class="social-forrst"></a></li>
          <li><a href="#" class="social-dribbble"></a></li>
        </ul>
      </div>
      <!-- End Socialarea -->
    </div>
  </div>
  <!-- End Footer Bottom -->
</div>
<!-- End Footer -->
<!-- Start Scroll To Top Div -->
<div id="scrolltab"></div>
<!-- End Scroll To Top Div -->
<script>
$(function () {
    setInterval("rotateDiv()", 10000);
});
function rotateDiv() {
    var currentDiv = $("#simpleslider div.current");
    var nextDiv = currentDiv.next();
    if (nextDiv.length == 0) nextDiv = $("#simpleslider div:first");
    currentDiv.removeClass('current')
        .addClass('previous')
        .fadeOut('2000');
    nextDiv.fadeIn('3000')
        .addClass('current', function () {
        currentDiv.fadeOut('2000', function () {
            currentDiv.removeClass('previous');
        });
    });
}
</script>
</body>
</html>