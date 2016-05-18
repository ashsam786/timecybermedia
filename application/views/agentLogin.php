<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!-- agent login Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Agent Login</h4>
      </div>
      <form method="post" id="agentLogin">	  
      <div class="modal-body">
		  <div class="form-group">
			<label for="email">Email address</label>
			<input type="email" name="email" class="form-control" id="email" placeholder="Enter email">
		  </div>
		  <div class="form-group">
			<label for="pass">Password</label>
			<input type="password" name="pass" class="form-control" id="pass" placeholder="Password">
		  </div>
		  <div class="form-group">		  
			<select class="form-control" name="award" id="award">
			  <option value="Lifestyle">Global Lifestyle Awards</option>
			  <option value="Business">Business Awards</option>
			  <option value="Education">Education Awards</option>
			  <option value="Healthcare">Healthcare Awards</option>
			  <option value="Dental">Dental Awards</option>
			</select>		  
		  </div>		  
      </div>
      <div class="modal-footer">
		  <button type="submit" class="btn btn-default">Login</button>		
      </div>
	  </form>
    </div>
  </div>
</div>

<div class="row agent minheight" id="bodyPanel">
	<div class="col-md-6 col-sm-12 col-xs-12 noPadng">
		<h1 class="text-center"></h1>
	</div>
	<div class="col-md-6 col-sm-12">

	</div>
</div>






