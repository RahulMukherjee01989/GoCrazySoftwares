<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutMain.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        
.bs-slider{
    overflow: hidden;
    max-height: 700px;
    position: relative;
    background: #000000;
}
.bs-slider:hover {
    cursor: -moz-grab;
    cursor: -webkit-grab;
}
.bs-slider:active {
    cursor: -moz-grabbing;
    cursor: -webkit-grabbing;
}
.bs-slider .bs-slider-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.40);
}
.bs-slider > .carousel-inner > .item > img,
.bs-slider > .carousel-inner > .item > a > img {
    margin: auto;
    width: 100% !important;
}

/********************
*****Slide effect
**********************/

.fade {
    opacity: 1;
}
.fade .item {
    top: 0;
    z-index: 1;
    opacity: 0;
    width: 100%;
    position: absolute;
    left: 0 !important;
    display: block !important;
    -webkit-transition: opacity ease-in-out 1s;
    -moz-transition: opacity ease-in-out 1s;
    -ms-transition: opacity ease-in-out 1s;
    -o-transition: opacity ease-in-out 1s;
    transition: opacity ease-in-out 1s;
}
.fade .item:first-child {
    top: auto;
    position: relative;
}
.fade .item.active {
    opacity: 1;
    z-index: 2;
    -webkit-transition: opacity ease-in-out 1s;
    -moz-transition: opacity ease-in-out 1s;
    -ms-transition: opacity ease-in-out 1s;
    -o-transition: opacity ease-in-out 1s;
    transition: opacity ease-in-out 1s;
}






/*---------- LEFT/RIGHT ROUND CONTROL ----------*/
.control-round .carousel-control {
    top: 47%;
    opacity: 0;
    width: 45px;
    height: 45px;
    z-index: 100;
    color: #ffffff;
    display: block;
    font-size: 24px;
    cursor: pointer;
    overflow: hidden;
    line-height: 43px;
    text-shadow: none;
    position: absolute;
    font-weight: normal;
    background: transparent;
    -webkit-border-radius: 100px;
    border-radius: 100px;
}
.control-round:hover .carousel-control{
    opacity: 1;
}
.control-round .carousel-control.left {
    left: 1%;
}
.control-round .carousel-control.right {
    right: 1%;
}
.control-round .carousel-control.left:hover,
.control-round .carousel-control.right:hover{
    color: #fdfdfd;
    background: rgba(0, 0, 0, 0.5);
    border: 0px transparent;
}
.control-round .carousel-control.left>span:nth-child(1){
    left: 45%;
}
.control-round .carousel-control.right>span:nth-child(1){
    right: 45%;
}





/*---------- INDICATORS CONTROL ----------*/
.indicators-line > .carousel-indicators{
    right: 45%;
    bottom: 3%;
    left: auto;
    width: 90%;
    height: 20px;
    font-size: 0;
    overflow-x: auto;
    text-align: right;
    overflow-y: hidden;
    padding-left: 10px;
    padding-right: 10px;
    padding-top: 1px;
    white-space: nowrap;
}
.indicators-line > .carousel-indicators li{
    padding: 0;
    width: 15px;
    height: 15px;
    border: 1px solid rgb(158, 158, 158);
    text-indent: 0;
    overflow: hidden;
    text-align: left;
    position: relative;
    letter-spacing: 1px;
    background: rgb(158, 158, 158);
    -webkit-font-smoothing: antialiased;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    margin-right: 5px;
    -webkit-transition: all 0.5s cubic-bezier(0.22,0.81,0.01,0.99);
    transition: all 0.5s cubic-bezier(0.22,0.81,0.01,0.99);
    z-index: 10;
    cursor:pointer;
}
.indicators-line > .carousel-indicators li:last-child{
    margin-right: 0;
}
.indicators-line > .carousel-indicators .active{
    margin: 1px 5px 1px 1px;
    box-shadow: 0 0 0 2px #fff;
    background-color: transparent;
    position: relative;
    -webkit-transition: box-shadow 0.3s ease;
    -moz-transition: box-shadow 0.3s ease;
    -o-transition: box-shadow 0.3s ease;
    transition: box-shadow 0.3s ease;
    -webkit-transition: background-color 0.3s ease;
    -moz-transition: background-color 0.3s ease;
    -o-transition: background-color 0.3s ease;
    transition: background-color 0.3s ease;

}
.indicators-line > .carousel-indicators .active:before{
    transform: scale(0.5);
    background-color: #fff;
    content:"";
    position: absolute;
    left:-1px;
    top:-1px;
    width:15px;
    height: 15px;
    border-radius: 50%;
    -webkit-transition: background-color 0.3s ease;
    -moz-transition: background-color 0.3s ease;
    -o-transition: background-color 0.3s ease;
    transition: background-color 0.3s ease;
}



/*---------- SLIDE CAPTION ----------*/
.slide_style_left {
    text-align: left !important;
}
.slide_style_right {
    text-align: right !important;
}
.slide_style_center {
    text-align: center !important;
}

.slide-text {
    left: 0;
    top: 25%;
    right: 0;
    margin: auto;
    padding: 10px;
    position: absolute;
    text-align: left;
    padding: 10px 85px;
    
}

.slide-text > h1 {
    
    padding: 0;
    color: #ffffff;
    font-size: 70px;
    font-style: normal;
    line-height: 84px;
    margin-bottom: 30px;
    letter-spacing: 1px;
    display: inline-block;
    -webkit-animation-delay: 0.7s;
    animation-delay: 0.7s;
}
.slide-text > p {
    padding: 0;
    color: #ffffff;
    font-size: 20px;
    line-height: 24px;
    font-weight: 300;
    margin-bottom: 40px;
    letter-spacing: 1px;
    -webkit-animation-delay: 1.1s;
    animation-delay: 1.1s;
}
.slide-text > a.btn-default{
    color: #000;
    font-weight: 400;
    font-size: 13px;
    line-height: 15px;
    margin-right: 10px;
    text-align: center;
    padding: 17px 30px;
    white-space: nowrap;
    letter-spacing: 1px;
    display: inline-block;
    border: none;
    text-transform: uppercase;
    -webkit-animation-delay: 2s;
    animation-delay: 2s;
    -webkit-transition: background 0.3s ease-in-out, color 0.3s ease-in-out;
    transition: background 0.3s ease-in-out, color 0.3s ease-in-out;

}
.slide-text > a.btn-primary{
    color: #ffffff;
    cursor: pointer;
    font-weight: 400;
    font-size: 13px;
    line-height: 15px;
    margin-left: 10px;
    text-align: center;
    padding: 17px 30px;
    white-space: nowrap;
    letter-spacing: 1px;
    background: #00bfff;
    display: inline-block;
    text-decoration: none;
    text-transform: uppercase;
    border: none;
    -webkit-animation-delay: 2s;
    animation-delay: 2s;
    -webkit-transition: background 0.3s ease-in-out, color 0.3s ease-in-out;
    transition: background 0.3s ease-in-out, color 0.3s ease-in-out;
}
.slide-text > a:hover,
.slide-text > a:active {
    color: #ffffff;
    background: #222222;
    -webkit-transition: background 0.5s ease-in-out, color 0.5s ease-in-out;
    transition: background 0.5s ease-in-out, color 0.5s ease-in-out;
}






/*------------------------------------------------------*/
/* RESPONSIVE
/*------------------------------------------------------*/

@media (max-width: 991px) {
    .slide-text h1 {
        font-size: 40px;
        line-height: 50px;
        margin-bottom: 20px;
    }
    .slide-text > p {

        font-size: 18px;
    }
}


/*---------- MEDIA 480px ----------*/
@media  (max-width: 768px) {
    .slide-text {
        padding: 10px 50px;
    }
    .slide-text h1 {
        font-size: 30px;
        line-height: 40px;
        margin-bottom: 10px;
    }
    .slide-text > p {
        font-size: 14px;
        line-height: 20px;
        margin-bottom: 20px;
    }
    .control-round .carousel-control{
        display: none;
    }

}
@media  (max-width: 480px) {
    .slide-text {
        padding: 10px 30px;
    }
    .slide-text h1 {
        font-size: 20px;
        line-height: 25px;
        margin-bottom: 5px;
    }
    .slide-text > p {
        font-size: 12px;
        line-height: 18px;
        margin-bottom: 10px;
    }
    .slide-text > a.btn-default, 
    .slide-text > a.btn-primary {
        font-size: 10px;
        line-height: 10px;
        margin-right: 10px;
        text-align: center;
        padding: 10px 15px;
    }
    .indicators-line > .carousel-indicators{
        display: none;
    }

}

    </style>
    <script src="Content/Slider.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper" style="margin-top:-13px;">



        <div id="bootstrap-touch-slider" class="carousel bs-slider slide  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper For Slides -->
            <div class="carousel-inner" role="listbox">

                <!-- Third Slide -->
                <div class="item active">

                    <!-- Slide Background -->
                    <img src="Content/slide1.jpg" alt=""  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>

                    <div class="container">
                        <div class="row">
                            <!-- Slide Text Layer -->
                            <div class="slide-text slide_style_left">
                                <h1 data-animation="animated zoomInRight">Bootstrap Websites</h1>
                                <%--<p data-animation="animated fadeInLeft">Bootstrap carousel now touch enable slide.</p>--%>
                                <p></p>
                        <a href="ContactUs.aspx" target="_blank" class="btn btn-primary" data-animation="animated fadeInUp">Contact Us</a>
                                <%--<a href="#" target="_blank"  class="btn btn-primary" data-animation="animated fadeInRight">select two</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Second Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="Content/slide2.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_center">
                        <h1 data-animation="animated flipInX">Static/Dynamic Websites</h1>
                        <%--<p data-animation="animated lightSpeedIn">Make Bootstrap Better together.</p>--%>
                        <p></p>
                        <a href="ContactUs.aspx" target="_blank" class="btn btn-primary" data-animation="animated fadeInUp">Contact Us</a>
                        <%--<a href="#" target="_blank"  class="btn btn-primary" data-animation="animated fadeInDown">select two</a>--%>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Third Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="Content/slide3.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <%--<div class="slide-text slide_style_right">
                        <h1 data-animation="animated zoomInLeft">Beautiful Animations</h1>
                        <p data-animation="animated fadeInRight">Lots of css3 Animations to make slide beautiful .</p>
                        <a href="http://bootstrapthemes.co/" target="_blank" class="btn btn-default" data-animation="animated fadeInLeft">select one</a>
                        <a href="http://bootstrapthemes.co/" target="_blank" class="btn btn-primary" data-animation="animated fadeInRight">select two</a>
                    </div>--%>
                </div>
                <!-- End of Slide -->


            </div><!-- End of Wrapper For Slides -->

            <!-- Left Control -->
            <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <!-- Right Control -->
            <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div> 












        <%--<section class="banner-section">
            <div class="banner-content">
                <div class="container">
                    <h1 class="Hero">Responsive Websites</h1>
                    <h2 class="Hero-subtitle">Shake hands with digital world. Expand your business</h2>
                    <div class="hero-btn"><a href="ContactUs.aspx" target="_blank" class="bg-link">Contact Us</a></div>
                </div>
            </div>
            <video class="banner-video" autoplay loop>
                <source src="Content/wp-content/themes/hubscale/videos/hubscale-hero.mp4" type="video/mp4">
            </video>
        </section>--%>
        <section class="first-section" id="benefits">
            <div class="container">
                <div class="small-container">
                    <h4 class="H4-center">We are all aware of the growing significance of the Internet in our lives. Businesses cannot afford to neglect this medium in order to reach a wider target audience for their products or services. A website can be an invaluable investment for a new business and can even provide a fresh lease of life to an old, traditional and diminishing business.</h4>

                    <div class="benefits">
                        <div class="benefit-wrap">
                            <div class="row benefit-flex">
                                <div class="col-md-6 col-sm-6 col-md-push-6 col-sm-push-6 col-xs-12 benefit-img">
                                    <img src="Content/responsive.svg" ></div>
                                <div class="col-md-6 col-sm-6 col-md-pull-6 col-sm-pull-6 col-xs-12 benefit-content">
                                    <h2 class="benefit-title">RESPONSIVE WEB DESIGN</h2>
                                    <p>Our professionals have the capability of featuring websites over desktop, smartphones and tables alike with responsive web design services</p>
                                </div>
                            </div>
                        </div>
                        <div class="benefit-wrap">
                            <div class="row benefit-flex">
                                <div class="col-md-6 col-sm-6 col-xs-12 benefit-img">
                                    <img src="Content/static.svg" alt=""></div>
                                <div class="col-md-6 col-sm-6 col-xs-12 benefit-content">
                                    <h2 class="benefit-title">STATIC WEBSITE DESIGN</h2>
                                    <p>Our static web design services endeavor to showcase your business as well as service online that won’t require frequent updates</p>
                                </div>
                            </div>
                        </div>
                        <div class="benefit-wrap">
                            <div class="row benefit-flex">
                                <div class="col-md-6 col-sm-6 col-md-push-6 col-sm-push-6 col-xs-12 benefit-img">
                                    <img src="Content/Small Bussiness.svg" alt=""></div>
                                <div class="col-md-6 col-sm-6 col-md-pull-6 col-sm-pull-6 col-xs-12 benefit-content">
                                    <h2 class="benefit-title">SMALL BUSINESS WEBSITE</h2>
                                    <p>Need to monitor your small business with a perfection, we have a solution for you</p>
                                </div>
                            </div>
                        </div>
                        <div class="benefit-wrap">
                            <div class="row benefit-flex">
                                <div class="col-md-6 col-sm-6 col-xs-12 benefit-img">
                                    <img src="Content/Aspnet.svg" alt=""></div>
                                <div class="col-md-6 col-sm-6 col-xs-12 benefit-content">
                                    <h2 class="benefit-title">ASP.NET DEVELOPMENT</h2>
                                    <p>Your own E-business partner for building world class dynamic websites and rich web applications on .net framework</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="second-section gray-light-bg" id="features">
            <div class="container">
                <h2 class="blue-center m-bot-50 m-top-0">More Features of your Website</h2>
                <div class="features-blocks">
                    <div class="block">
                        <div class="block-icon">
                            <center><img src="Content/Imgs/SEOicon.svg" alt=""></center></div>
                        <div class="label text-uppercase"><center>Seach Engine Optimization</center></div>
                        <p class="block-text">Rank your website at the 1st Page of Google for targeted keywords</p>
                    </div>
                    <div class="block">
                        <div class="block-icon">
                            <center><img src="Content/Imgs/location-icon.svg" alt=""></center></div>
                        <div class="label text-uppercase"><center>LOCATION FINDER</center></div>
                        <p class="block-text">Let Google help people to reach your company easily</p>
                    </div>
                    <div class="block">
                        <div class="block-icon">
                            <center><img src="Content/Imgs/search-icon-tm.svg" alt=""></center></div>
                        <div class="label text-uppercase"><center>SEARCHABLE WEBSITE</center></div>
                        <p class="block-text">Help People Search your website content easily.</p>
                    </div>
                    <div class="block">
                        <div class="block-icon">
                            <center><img src="Content/Imgs/notification-icon.svg" alt=""></center></div>
                        <div class="label text-uppercase"><center>NOTIFICATIONS</center></div>
                        <p class="block-text">Send notifications to your customers from your website</p>
                    </div>
                    <div class="block">
                        <div class="block-icon">
                            <center><img src="Content/Imgs/email-icon-tm.svg" alt=""></center></div>
                        <div class="label text-uppercase"><center>Company Email</center></div>
                        <p class="block-text">Get Company e-mail id's, for official mails</p>
                    </div>
                    <div class="block">
                        <div class="block-icon">
                            <center><img src="Content/Imgs/chat-icon.svg" alt=""></center></div>
                        <div class="label text-uppercase"><center>GET FEEDBACK</center></div>
                        <p class="block-text">Get Feedback of customers to your e-mail</p>
                    </div>
                   <%-- <div class="block">
                        <div class="block-icon">
                            <img src="Content/wp-content/uploads/2017/05/ic_F-API.svg" alt="advanced api gears icon"></div>
                        <div class="label text-uppercase">ADVANCED API</div>
                        <p class="block-text">Automate workflows using our pre-integrated two-way API: seamlessly pull campaigns from your advertisers and automatically push them to your publishers based on customizable rules.</p>
                    </div>
                    <div class="block">
                        <div class="block-icon">
                            <img src="Content/wp-content/uploads/2017/05/ic_F-tracking.svg" alt="multi-event tracking crossing arrows icon"></div>
                        <div class="label text-uppercase">MULTI-EVENT TRACKING</div>
                        <p class="block-text">Control the quality of your traffic in real-time: track up to 10 post-conversion events and decide which ones to share with your publishers.</p>
                    </div>--%>
                </div>
                <div class="features-blocks-mobile">
                    <div class="panel-group" id="accordion-features" role="tablist" aria-multiselectable="true">
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="heading-1"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
                                <span class="title-text label text-uppercase">Seach Engine Optimization</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading-1">
                                <div class="panel-body txt">Rank your website at the 1st Page of Google for targeted keywords</div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="heading-2"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2"><span class="title-text label text-uppercase">LOCATION FINDER</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-2">
                                <div class="panel-body txt">Let Google help people to reach your company easily</div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="heading-3"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-3" aria-expanded="false" aria-controls="collapse-3">
                                <span class="title-text label text-uppercase">SEARCHABLE WEBSITE</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-3">
                                <div class="panel-body txt">Help People Search your website content easily</div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="heading-4"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-4" aria-expanded="false" aria-controls="collapse-4">
                                <span class="title-text label text-uppercase">NOTIFICATIONS</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-4">
                                <div class="panel-body txt">Send notifications to your customers from your website</div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="heading-5"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-5" aria-expanded="false" aria-controls="collapse-5">
                                <span class="title-text label text-uppercase">COMPANY EMAIL</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-5">
                                <div class="panel-body txt">Get Company e-mail id's, for official mails</div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="heading-6"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-6" aria-expanded="false" aria-controls="collapse-6">
                                <span class="title-text label text-uppercase">GET FEEDBACK</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-6">
                                <div class="panel-body txt">Get Feedback of customers to your e-mail</div>
                            </div>
                        </div>
                        <%--<div class="panel">
                            <div class="panel-heading" role="tab" id="heading-7"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-7" aria-expanded="false" aria-controls="collapse-7"><span class="icon">
                                <img src="Content/wp-content/uploads/2017/05/ic_F-API.svg" alt="advanced api gears icon"></span><span class="title-text label text-uppercase">ADVANCED API</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-7">
                                <div class="panel-body txt">Automate workflows using our pre-integrated two-way API: seamlessly pull campaigns from your advertisers and automatically push them to your publishers based on customizable rules.</div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="heading-8"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-features" href="#collapse-8" aria-expanded="false" aria-controls="collapse-8"><span class="icon">
                                <img src="Content/wp-content/uploads/2017/05/ic_F-tracking.svg" alt="multi-event tracking crossing arrows icon"></span><span class="title-text label text-uppercase">MULTI-EVENT TRACKING</span><div class="panel-title-icons pull-right"><span class="panel-title-icon pull-right icon-in"><i class="fa fa-chevron-up" aria-hidden="true"></i></span><span class="panel-title-icon pull-right icon-out"><i class="fa fa-chevron-down" aria-hidden="true"></i></span></div>
                            </a></div>
                            <div id="collapse-8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-8">
                                <div class="panel-body txt">Control the quality of your traffic in real-time: track up to 10 post-conversion events and decide which ones to share with your publishers.</div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </section>
        <section class="third-section padding-section text-center">
            <div class="container">
                <%--<div class="img-wrap">
                    <img src="Content/wp-content/themes/hubscale/img/CTA_balloon.gif" alt="Hubscale balloon gif"></div>--%>
                <h4 class="title">Customer Satisfaction is what we care of</h4>
                <%--<a href="#" class="bg-link openGetDemoForm" data-toggle="modal" data-target="#ModalWrap">Schedule a demo</a>--%>
            </div>
        </section>
        <section class="fourth-section padding-section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="about-content">
                            <div class="label"><center>ABOUT US</center></div>
                            <h2 class="m-bot-35"><center>We are a Start up, so will like to grow with you , Are you helping us?</center></h2>
                            <%--<div class="m-bot-35">
                                <div class="m-bot-35">
                                    <p>Hubscale comes to you from the founders of <a href="https://www.adxperience.com/" target="_blank" rel="noopener noreferrer">Adxperience</a>, an agency that has been helping many clients achieve campaign success over the past five years. All their experience and knowledge was compiled into one software, with an unparalleled set of features and capabilities, to serve anyone who is looking to take their performance marketing to the next level. Packaging our own expertise into the Hubscale platform, we are proud to bring this state-of-the-art software to market.</p>
                                </div>
                            </div>--%>
                            <%--<div class="contact-block">
                                <a href="#" class="bg-link openContactForm" data-toggle="modal" data-target="#ModalWrap">Contact Us</a>
                                <!--<div class="social-links-group"><a href="https://www.facebook.com/Hubscale/" class="facebook-link"><i class="fa fa-facebook" aria-hidden="true"></i></a><a href="" class="twitter-link"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="https://www.linkedin.com/company-beta/18094422/" class="linkedin-link"><i class="fa fa-linkedin" aria-hidden="true"></i></a></div>-->
                            </div>--%>
                        </div>
                    </div>
                    <%--<div class="col-md-6 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                        <div class="about-cards">
                            <div class="card">
                                <div class="card-img">
                                    <img src="Content/wp-content/uploads/2017/05/img-france.jpg" alt="Paris France image"></div>
                                <div class="card-title label-left-gray text-uppercase">France</div>
                            </div>
                            <div class="card">
                                <div class="card-img">
                                    <img src="Content/wp-content/uploads/2017/05/img-israel.jpg" alt="Tel Aviv Israel image"></div>
                                <div class="card-title label-left-gray text-uppercase">Israel</div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </section>
        <section id="project" class="gray-light-bg padding-section">
            <h2 class="label-center text-uppercase m-top-0 m-bot-35">Projects</h2>

            <div class="center-slick">
                <div>
                    <div class="meet-block">
                        <div class="block-img">
                         <a href="http://www.blueeagle.org.in" target="_blank"> <img src="Content/Imgs/blueeagle.jpg" alt=""></a></div>
                        <h2 class="block-title">Blue Eagle Security Solutions</h2>
                        <p class="text-left label-left-gray text-uppercase m-bot-35">Lucknow</p>
                        <%--<div class="block-txt m-bot-35">
                            <p>Blue Eagle Security Solutions</p>
                        </div>--%>
                        <a href="http://blueeagle.org.in/Contact.aspx" class="bg-link openGetMeetingForm" target="_blank">Have a Visit</a></div>
                </div>
                <div>
                    <div class="meet-block">
                        <div class="block-img">
                         <a href="http://www.blueeagle.org.in" target="_blank"> <img src="Content/Imgs/blueeagle.jpg" alt=""></a></div>
                        <h2 class="block-title">Blue Eagle Security Solutions</h2>
                        <p class="text-left label-left-gray text-uppercase m-bot-35">Lucknow</p>
                        <%--<div class="block-txt m-bot-35">
                            <p>Blue Eagle Security Solutions</p>
                        </div>--%>
                        <a href="http://blueeagle.org.in/Contact.aspx" class="bg-link openGetMeetingForm" target="_blank">Have a Visit</a></div>
                </div>
                <div>
                    <div class="meet-block">
                        <div class="block-img">
                         <a href="http://www.blueeagle.org.in" target="_blank"> <img src="Content/Imgs/blueeagle.jpg" alt=""></a></div>
                        <h2 class="block-title">Blue Eagle Security Solutions</h2>
                        <p class="text-left label-left-gray text-uppercase m-bot-35">Lucknow</p>
                        <%--<div class="block-txt m-bot-35">
                            <p>Blue Eagle Security Solutions</p>
                        </div>--%>
                        <a href="http://blueeagle.org.in/Contact.aspx" class="bg-link openGetMeetingForm" target="_blank">Have a Visit</a></div>
                </div>
            </div>
            <div class="prev"></div>
            <div class="next"></div>
            <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
        </section>
        <%--<section id="partners" class="padding-section gray-bg">
            <div class="container">
                <div class="row">
                    <div class="partners-titles-wrap">
                        <h2 class="label text-center text-uppercase m-bot-35 heading-1 active">MOBILE APP ANALYTICS & MEASUREMENT PARTNERS</h2>
                        <h2 class="label text-center text-uppercase m-bot-35 heading-2">THIRD-PARTY DATA PROVIDERS</h2>
                        <h2 class="label text-center text-uppercase m-bot-35 heading-3">RICH-MEDIA ADSERVER VENDORS</h2>
                    </div>
                    <div class="logo-slider-wrap">
                        <div id="carousel-logo-customers" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-logo-customers" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-logo-customers" data-slide-to="1" class=""></li>
                                <li data-target="#carousel-logo-customers" data-slide-to="2" class=""></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="img-wrap">
                                        <img src="Content/wp-content/uploads/2017/05/partner-logo_tune.jpg" alt="tune logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_appsflyer.jpg" alt="appsflyer logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_kochava.jpg" alt="kochava logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_apsalar.jpg" alt="apsalar logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_adjust.jpg" alt="adjust logo"></div>
                                </div>
                                <div class="item ">
                                    <div class="img-wrap">
                                        <img src="Content/wp-content/uploads/2017/05/partner-logo_ip2.jpg" alt="ip2location logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_adsquare.jpg" alt="adsquare logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_scientiamobile.jpg" alt="scientiamobile logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_maxmind.jpg" alt="maxmind logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_wurfl.jpg" alt="wurfl logo"></div>
                                </div>
                                <div class="item ">
                                    <div class="img-wrap">
                                        <img src="Content/wp-content/uploads/2017/05/partner-logo_factual.jpg" alt="factual logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_adform.jpg" alt="adform logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_doubleclick.jpg" alt="doubleclick by google logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_celtra.jpg" alt="celtra logo"><img src="Content/wp-content/uploads/2017/05/partner-logo_medialets.jpg" alt="medialets logo"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>--%>
    </div>
    <!-- end .content-wrapper -->
</asp:Content>

