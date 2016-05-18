	<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Award Ceremoney</title>
	<style>
	
	.dropdown:hover .dropdown-menu {
	display: block;
	transition: all .4s ease-in-out;
}
	</style>
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url('assets/css/bootstrap.min.css');?>" rel="stylesheet">
    
    <!-- Font Awesome CSS -->
    <link href="<?php echo base_url('assets/css/font-awesome.min.css');?>" rel="stylesheet">
    
    
    <!-- Animate CSS -->
    <link href="<?php echo base_url('assets/css/animate.css');?>" rel="stylesheet" >
    
    <!-- Owl-Carousel -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/owl.carousel.css');?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/css/owl.theme.css');?>" >
    <link rel="stylesheet" href="<?php echo base_url('assets/css/owl.transitions.css');?>" >

    <!-- Custom CSS -->
    <link href="<?php echo base_url('assets/css/style.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/responsive.css');?>" rel="stylesheet">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/color/green.css');?>">
    
    
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/color/green.css');?>" title="green">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/color/light-red.css');?>" title="light-red">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/color/blue.css');?>" title="blue">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/color/light-blue.css');?>" title="light-blue">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/color/yellow.css');?>" title="yellow">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/color/light-green.css');?>" title="light-green">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    
    
    <!-- Modernizer js -->
    <script src="<?php echo base_url('assets/js/modernizr.custom.js');?>"></script>

    
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="index">
    
    
    <!-- Styleswitcher
================================================== -->
        <div class="colors-switcher">
            <a id="show-panel" class="hide-panel"><i class="fa fa-tint"></i></a>        
                <ul class="colors-list">
                    <li><a title="Light Red" onClick="setActiveStyleSheet('light-red'); return false;" class="light-red"></a></li>
                    <li><a title="Blue" class="blue" onClick="setActiveStyleSheet('blue'); return false;"></a></li>
                    <li class="no-margin"><a title="Light Blue" onClick="setActiveStyleSheet('light-blue'); return false;" class="light-blue"></a></li>
                    <li><a title="Green" class="green" onClick="setActiveStyleSheet('green'); return false;"></a></li>
                    
                    <li class="no-margin"><a title="light-green" class="light-green" onClick="setActiveStyleSheet('light-green'); return false;"></a></li>
                    <li><a title="Yellow" class="yellow" onClick="setActiveStyleSheet('yellow'); return false;"></a></li>
                    
                </ul>

        </div>  
<!-- Styleswitcher End
================================================== -->

    <!-- Navigation -->
	<nav class="navbar navbar-default" style="background: black; margin:0px">
  <div class="container-fluid" style="padding-left: 227px; ">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<?php echo base_url();?>"><i class="fa fa-home"></i>Home</a></li>
		 <li><a href="aboutus">About us</a></li>
      
		  <li><a href="services">Service</a></li>
		  <li><a href="#">Brand</a></li>
		   <li class="dropdown">
          <a href="about-us" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Event<span class="caret"></span></a>
          <ul class="dropdown-menu" stle="background: black; transition: all 0.7s ease-in-out;">
            <li><a href="education">Global Educaiton Excellence Awards</a></li>
			 <li role="separator" class="divider"></li>
            <li><a href="healthcare">Global Healthcare Excellence Awards</a></li>
			 <li role="separator" class="divider"></li>
            <li><a href="dental">National Dental Excellence Awards</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="lifestyle">Global Lifestyle Awards</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="lifestyle">Global Business & Leadership Awards</a></li>
          </ul>
        </li>
		  <li><a href="<?php echo base_url('assets/text/sponsor.pdf')?>">Sponser</a></li>
		  <li><a href="<?php echo base_url('contact');?>">Contact Us</a></li>
      </ul>
     
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <!-- Navigation -->


    
  <section id="page-top" style="
    height:500px;">
        <!-- Carousel -->
        <div id="main-slide" class="carousel slide" data-ride="carousel" style="height:500px">

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#main-slide" data-slide-to="0" class="active"></li>
                <li data-target="#main-slide" data-slide-to="1"></li>
                <li data-target="#main-slide" data-slide-to="2"></li>
            </ol>
            <!--/ Indicators end-->

            <!-- Carousel inner -->
            <div class="carousel-inner" style="height: 500px;">
                <div class="item active">
                    <img class="img-responsive animated bounce" src="<?php echo base_url('assets/images/slider/header-bg-1.jpg'); ?>" alt="slider" style="height:500px">
                    <div class="slider-content" style="    top: 219px;">
                        <div class="col-md-12 text-center">
                            <h1 class="animated3">
                                <span><strong>Fame</strong> for the highest</span>
                            </h1>
                            <p class="animated2">At vero eos et accusamus et iusto odio dignissimos<br> ducimus qui blanditiis praesentium voluptatum</p>	
                            <a href="#feature" class="page-scroll btn btn-primary animated1">Read More</a>
                        </div>
                    </div>
                </div>
                <!--/ Carousel item end -->
                <div class="item">
                    <img class="img-responsive" src="<?php echo base_url('assets/images/slider/header-bg-1.jpg'); ?>" alt="slider" style="height:500px">
                    <div class="slider-content" style="    top: 219px;">
                        <div class="col-md-12 text-center">
                            <h1 class="animated3">
                                <span><strong>Fame</strong> for the highest</span>
                            </h1>
                            <p class="animated2">At vero eos et accusamus et iusto odio dignissimos<br> ducimus qui blanditiis praesentium voluptatum</p>	
                            <a href="#feature" class="page-scroll btn btn-primary animated1">Read More</a>
                        </div>
                    </div>
                </div>
                
                <!--/ Carousel item end -->
            </div>
            <!-- Carousel inner end-->

            <!-- Controls -->
            <a class="left carousel-control" href="#main-slide" data-slide="prev">
                <span><i class="fa fa-angle-left"></i></span>
            </a>
            <a class="right carousel-control" href="#main-slide" data-slide="next">
                <span><i class="fa fa-angle-right"></i></span>
            </a>
        </div>
        <!-- /carousel -->
    </section>
    <!-- End Home Page Slider -->