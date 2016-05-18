<?php //var_dump($nxtawd['result']);?>
<!DOCTYPE html>
<html>
<head>
<title>Time Cybermedia</title>
<link href="<?php echo base_url('assets/css/bootstrap.css');?>" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="<?php echo base_url('assets/css/style1.css');?>" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/jquery-ui.css');?>">
<!-- Custom Theme files -->
<script src="<?php echo base_url('assets/js/jquery.min.js');?>"></script>
<!-- cart -->
<script src="<?php echo base_url('assets/js/imagezoom.js');?>"></script>
<script src="<?php echo base_url('assets/js/jquery.flexslider.js');?>"></script>

<!-- cart -->
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Big Store Ecommerce Ui Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!-- script for close -->
<script>
$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.vlcone').fadeOut('slow', function(c){
			$('.vlcone').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
$('.alert-close1').on('click', function(c){
	$('.vlctwo').fadeOut('slow', function(c){
		$('.vlctwo').remove();
	});
});	  
});
</script>
<!-- //script for close -->
<script src="<?php echo base_url('assets/js/simpleCart.min.js');?>"> </script>
<style>
body{
	text-align: center;
	
  font-family: sans-serif;
  font-weight: 100;
}



#clockdiv{
	font-family: sans-serif;
	color: #fff;
	display: inline-block;
	font-weight: 100;
	text-align: center;
	font-size: 30px;
}

#clockdiv > div{
	
	padding: 10px;
	border-radius: 3px;
	background: #A5B5B1;
	display: inline-block;
}

#clockdiv div > span{
	    padding: 4px;
    border-radius: 3px;
    background: #306C9A;
}

.smalltext{
	padding-top: 0px;
	font-size: 16px;
}
</style>
</head>
<body>
<div class="content">
	<div class="container">
	<div style="box-shadow:0px 0px 11px 8px black;">
		<div class="header" style="margin: 0px; background:black">
		<div class="row">
		
		<div class="col-md-6">
		<div style="background: whitesmoke;
    padding: 11px;
    box-shadow: 1px 1px 2px 1px grey;
    border-radius: 8px;">
		<div style="    font-size: 16px;
    color: #B91419;
    font-family: inherit;
    font-weight: bold;
}">
	
	<?php 
	if($nxtawd['result'] == false)
	{
		echo 'No Event';
	}
	else
	{
	echo $nxtawd['msg'][0]->awd_title;
	}
	?>
		</div>
		<div id="clockdiv">
			  <div>
				<span class="days"></span>
				<div class="smalltext">Days</div>
			  </div>
			  <div>
				<span class="hours"></span>
				<div class="smalltext">Hours</div>
			  </div>
			  <div>
				<span class="minutes"></span>
				<div class="smalltext">Minutes</div>
			  </div>
			  <div>
				<span class="seconds"></span>
				<div class="smalltext">Seconds</div>
			  </div>
			</div>
			</div>
		</div>
		<div class="col-md-6">
		
		</div>
		</div>
		<div class="row">
		<div class="col-md-12" style="margin: 7px 1px -23px;padding: 0px 0px 0px 0px;
">
		<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo base_url();?>"><i class="fa fa-home"></i>Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav" style="    margin: 14px;">
        <li  style="padding: 0px 10px;"><a href="#abtawd" data-toggle="tab">About Award</a></li>
        <li style="padding: 0px 10px;"><a href="<?php echo base_url($about[0]->page.'/nomination');?>">Nomination</a></li>
        <li style="padding: 0px 10px;"><a href="#partner" data-toggle="tab" >Partner</a></li>
        <li style="padding: 0px 10px;"><a href="#patrons" data-toggle="tab" >Patrons</a></li>
        <li style="padding: 0px 10px;"><a href="<?php echo base_url('contact');?>">Contact us</a></li>
      </ul>
    
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
		</div>
		</div>
			

		

</div>	