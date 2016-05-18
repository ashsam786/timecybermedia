$(document).ready(function(){
$("#contactForm").submit(function(e){
   
    	var frmData = $(this).serializeArray();
		var data = {};
		$.each(frmData,function(i,v){
			data[v.name] = v.value;
		});
		$.post(location.origin+'/Contact/detail',data,function(data){
				var o = JSON.parse(data);
			if(o.result == true){
				$("#contactModel").html('<div class="alert alert-success">'+o.msg+'</div>');
                              document.getElementById("contactForm").reset();
				/*setTimeout(function(){
					location.reload();
				},1500);*/
			} else {
				$("#contactModel").html('<div class="alert alert-danger">'+o.msg+'</div>');
			}
			
		});
		e.preventDefault();
		return false;
	});
   });



