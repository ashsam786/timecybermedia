<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<style>
.agent{
padding:2em;
}
</style>
<div>
<div class="row agent" id="bodyPanel">
	<div class="box">
		<div class="col-md-12 col-sm-12 col-xs-12 noPadng">
			<h1 class="text-center"><?php echo $_SESSION['agt_nme']; ?></h1>
			<h3 class="text-center"><?php echo $_SESSION['agt_awd']; ?></h3>
			<div id="mailResMsg"></div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
		<form class="agentEmail" id="agentEmail" method="post">
		  <div class="form-group">
			<label for="email">Email</label>
			<input type="text" class="form-control" id="email" placeholder="email" required>
		  </div>
		  <button type="submit" id="agentEmlSub" class="btn btn-default">Send invitation</button>
		</form>		
		</div>
		<div class="text-right">
			<button type="button" class="btn btn-danger"><a href="<?php echo base_url('loginagent/logout'); ?>" style="color: #fff; text-decoration: none;">LOGOUT</a></button>
		</div>
	</div>
</div>
<!--div class="row">
	<div class="box">
	<div class="panel panel-default">
      <!-- Default panel contents -->
      <!--div class="panel-heading">Mailing History</div>

      <!-- Table -->
      <!--table class="table mailHistory">
        <thead>
          <tr>
            <th>Send To</th>
            <th>Date</th>
            <th>Time</th>
            <th>Award</th>
          </tr>
        </thead>
        <tbody></tbody>
      </table>
    </div>
	</div>
</div-->
</div>
<script>
$(document).ready(function(){
var data = '<?php echo $_SESSION['agt_eml']; ?>';
	$("#agentEmail").submit(function(e){
		var email = $('#email:input').val();
		$.ajax({
			url:location.origin+'/sendnommail',
			method:'post',
			data: {'email':email},
			beforeSend: function(){
				$("#agentEmail #email,#agentEmlSub").attr('disabled','disabled');
			},
			success: function(res){
				res = $.parseJSON(res);
				if(res.result === true){
					var d = res.date.split(' ');
					var date = d[0];
					var time = d[1];
					$("#mailResMsg").html('<div class="alert alert-success">'+res.msg+'</div>');
					document.getElementById('agentEmail').reset();
					$(".mailHistory tbody").prepend('<tr><td>'+res.email+'</td><td>'+date+'</td><td>'+time+'</td><td>'+res.award+'</td></tr>');
				} else {
					$("#mailResMsg").html('<div class="alert alert-danger">'+res.msg+'</div>');
				}				
			}
		}).always(function(){
			$("#agentEmail #email,#agentEmlSub").removeAttr('disabled');
		});
		e.preventDefault();
		return false;
	});
	
	
});
</script>





