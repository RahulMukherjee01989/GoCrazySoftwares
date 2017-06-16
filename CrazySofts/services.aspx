<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutMain.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-xs-12" style="padding-top:1.8em">
    <section id="services" class="service-item">
	   <div class="container">
            <div class="center wow fadeInDown">
                <h2>Our Service</h2>
                <%--<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>--%>
            </div>

            <div class="row">

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services1.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Asp.net Web Development</h3>
                            <%--<p>Lorem ipsum dolor sit ame consectetur adipisicing elit</p>--%>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services2.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">SEO Integration to Website</h3>
                            <%--<p>Lorem ipsum dolor sit ame consectetur adipisicing elit</p>--%>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services3.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Re Design your Website</h3>
                            <%--<p>Lorem ipsum dolor sit ame consectetur adipisicing elit</p>--%>
                        </div>
                    </div>
                </div>  

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services4.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Attractive Bootstrap Html Websites</h3>
                            <%--<p>Lorem ipsum dolor sit ame consectetur adipisicing elit</p>--%>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services5.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Mobile Friendly Website</h3>
                            <%--<p>Lorem ipsum dolor sit ame consectetur adipisicing elit</p>--%>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services6.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Website Maintainance</h3>
                            <%--<p>Lorem ipsum dolor sit ame consectetur adipisicing elit</p>--%>
                        </div>
                    </div>
                </div>                                                
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->


	<section id="feature" class="transparent-bg">
		<div class="container">
			<div class="get-started center wow fadeInDown">
				<h2>Ready to get started</h2>
				<p class="lead">Ready to take a next step towards your bussiness/organization</p>
				<div class="request">
					<h4><a href="#">Contact Us</a></h4>
				</div>
			</div><!--/.get-started-->

			<div class="clients-area center wow fadeInDown">
				<h2>What our client says</h2>
				<%--<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>--%>
			</div>

			<div class="row">
				<div class="col-md-4">
					<%--<div class="clients-comments text-center">
						<img src="images/client1.png" class="img-circle" alt="">
						<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</h3>
						<h4><span>-John Doe /</span>  Director of corlate.com</h4>
					</div>--%>
				</div>
				<div class="col-md-4 wow fadeInDown">
					<div class="clients-comments text-center">
						<img src="images/client2.png" class="img-circle" alt="">
						<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</h3>
						<h4><span>-John Doe /</span>  Director of corlate.com</h4>
					</div>
				</div>
				<div class="col-md-4">
					<%--<div class="clients-comments text-center">
						<img src="images/client3.png" class="img-circle" alt="">
						<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</h3>
						<h4><span>-John Doe /</span>  Director of corlate.com</h4>
					</div>--%>
				</div>
			</div>
		</div><!--/.container-->
	</section><!--/#feature-->
        </div>
        
</asp:Content>

