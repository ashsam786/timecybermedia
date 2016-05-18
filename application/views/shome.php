<?php date_default_timezone_set("Asia/Calcutta");?>
<style>
.list-group-item{ margin: 0px 0px 8px;    box-shadow: 0px 0px 4px 2px #3A2E2E;     text-align: start;}
hr{border-top: 1px solid #A52A2A;width: 275px; margin: 6px 22px;box-shadow: 0px 0px 2px 0px brown;}
	p{text-align: justify;
    margin: 0px 19px;
    font-size: 15px;
    opacity: 0.9;
    font-family: sans-serif;}
</style>

		<div class="men-banner">
			<div class="item">
			  <img src="<?php echo base_url('assets/images/homeslider/'.$about[0]->page).'.jpg';?>" alt="..." style="width: 100%;">
				  
			</div>
			
		</div>
	
		<div class="banner-bottom" style="background: rgba(255, 255, 255,0.86);">
		<div class="row">
		
		
			
			<div class="col-md-12" style="margin: 33px 0px 0px;padding: 0px -3px 18px;">
			<div class="col-md-3" role="tabpanel">
			
                
					<div class="list-group nav nav-tabs"   role="tablist">
			  
					  <a class="list-group-item" href="#abtawd" data-toggle="tab"><i class="fa fa-trophy"></i> About <?php echo $about[0]->page;?> Awards</a>
					  <a class="list-group-item" href="#award" data-toggle="tab"><i class="fa fa-university"></i>Upcoming Award Function</a>
					  <a href="#patrons" data-toggle="tab" class="list-group-item"><i class="fa fa-user"></i> ChiefGuest</a>
					  <a href="#eligible" data-toggle="tab"  class="list-group-item"><i class="fa fa-eye"></i> Eligibilty Criteria</a>
					  <a href="#category" data-toggle="tab"  class="list-group-item"><i class="fa fa-sitemap"></i> Nomination Category</a>
					  <a href="#keyBenifit" data-toggle="tab" class="list-group-item"><i class="fa fa-bar-chart"></i> Key Benifits to Awardee</a>
					  <a href="#service" data-toggle="tab" class="list-group-item"><i class="fa fa-thumbs-up"></i> Other Benifits & Services</a>
					  <a href="#tcondition" data-toggle="tab"  class="list-group-item"><i class="fa fa-ban"></i> Term & Condition</a>
					  <a href="#jury" data-toggle="tab"  class="list-group-item"><i class="fa fa-balance-scale"></i> Jury</a>
					  <a href="<?php echo base_url($about[0]->page.'/nomination');?>"   class="list-group-item"><i class="fa fa-pencil-square-o"></i>  Nomination Form</a>
					  <a href="#partner" data-toggle="tab"  class="list-group-item"><i class="fa fa-users"></i> Our Partners</a>
				</div> </div>
			<div class="col-md-9" role="tabpanel" >
			<div style="    height: 562px;
    box-shadow: 0px 0px 0px 2px brown;
    border-radius: 3px;
   ">
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade in active" id="abtawd">
				<h1> ABOUT AWARD </h1>
			<hr>
				<p><?php echo $about[0]->about;?></p> 		
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="award">
				<h1> UPCOMING AWARD FUNCTION </h1>
				<hr>
				<p> <?php 
				if($nxtawd['result'] == true){
						$evedate = $nxtawd['msg'][0]->awd_date;
						$date1 = date_create($evedate);
						$date =  date_format($date1, 'jS F Y l');
						echo 'The <b>'.$nxtawd['msg'][0]->awd_title.'</b> are proposed to be organized on <b>'.$date.'</b> at a 5 star hotel in '.$nxtawd['msg'][0]->awdf_venu.' wherein the awardees will be honoured with an award certificate and a trophy of excellence by personalities of national repute. The award function shall be followed by group photographs, press interviews and a sumptuous lunch.';
				}
				
				else
				{
					'No event';
				}
				?>  </p>
				<br>
				<h1>DATE, TIME, VANUE</h1>
				<hr>
				<p><i class="fa fa-calendar"> <b><?php if($nxtawd['result']== true){echo $date;}?></i></b></p>
				<p><i class="fa fa-clock-o"></i> <b>11 a.m Onward.</b>
				</p>
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="patrons">
				<h1> Our Patrons </h1>
				<hr>
				<p>The names of the esteemed guests will be shared only upon request. Please drop an 
				e-mail at info@timemedia.in.</p>
			</div>
				<div role="tabpanel" class="tab-pane fade in" id="eligible">
				<h1> ELIGIBILITY CRITERIA </h1>
				<hr>
				<p>
				Each award Eligibilty critereia
				</p>
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="category">
				<h1> Nomination Category </h1>
				<hr>
				category of current award
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="keyBenifit">
				<h1> Key & Benifits</h1>
				<hr>
				key benefits of awards
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="service">
				<h1> Other Benifits & Services </h1>
				<hr>
				other benefits and services
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="tcondition">
				<h1> Term  & Condition </h1>
				<hr>
				Award function date
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="jury">
				<h1> Jury </h1>
				<hr>
				Award function jury 
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="nomform">
				<h1> Nomination Form </h1>
				<hr>
				nomination form button
			</div>
			<div role="tabpanel" class="tab-pane fade in" id="partner">
				<h1> Our Previous Awards </h1>
				<hr>
				our previous awards
			</div>
			
		
			</div>
			</div>
			</div>
			
			</div>
			</div>
			</div>
			
	