
// Model Load
	$(window).load(function(){
		  //Disply the modal popup
			$('#loginModal').modal('show');
		});
		$('#loginModal').on('hidden.bs.modal', function () {
 location.reload();
});
	/* Agent Login*/
$(document).ready(function(){
// agent login form
	$("#agentLogin").submit(function(e){
		var frm = $(this).serializeArray();
		var data = {};
		$.each(frm,function(i,v){
			data[v.name] = v.value;
		});
		$.post(location.origin+'/loginagent',data,function(data){
			var o = JSON.parse(data);
			if(o.result){
				$("#loginModal .modal-header").html('<div class="alert alert-success">'+o.msg+'</div>');
				setTimeout(function(){
					location.reload();
				},1500);
			} else {
				$("#loginModal .modal-header").html('<div class="alert alert-danger">'+o.msg+'</div>');
			}
		});
		e.preventDefault();
		return false;
	});
});



