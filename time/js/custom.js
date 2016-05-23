(function(){
	$("#sndNomForm").on('submit', function(e){
		$.ajax({
			url: 'processNominationForm.php',
			data: $(this).serializeArray(),
			method: 'post',
			dataType: 'json',
			success: function(data){
				console.log(data.result);
			}
		}).done(function(data){
			console.log(data);
		});
		e.preventDefault();
	});

	$("#agentLogout").on('click', function(e){
		$.ajax({
			url: 'agentLogout.php',
			method: 'post',
			dataType: 'json',
			success: function(data){
				console.log(data.result);
			}
		}).done(function(data){
			console.log(data);
		});
		
		e.preventDefault();
	});
        
    $("#hnominationForm").on('submit', function(e){
        if(!$('input[name="nomType"]:checked').val()) {
            alert('Please select nomination type');
            return false;
        }
        
        if($('input[name="nomType"]:checked').val() == 'individual'){
            if($('#nName').val() == ''){
                alert("Please enter nominee's name");
                return false;
            }
            if($("#nEmail").val() == ''){
                alert("Please enter nominee's email");
                return false;
            }
            if($('#nMobile').val() == ''){
                alert("Please enter nominee's mobile");
                return false;
            }            
        }
        
        if($('input[name="nomType"]:checked').val() == 'organization'){
            if($('#orgName').val() == ''){
                alert("Please enter organization's name");
                return false;
            }
            if($("#orgEmail").val() == ''){
                alert("Please enter organization's email");
                return false;
            }
            if($('#orgMobile').val() == ''){
                alert("Please enter organization's mobile");
                return false;
            }            
        }
                
        var frm = $(this).serializeArray();
        var data = {};
        $.each(frm,function(i,v){
            data[v.name] = v.value;
        });
        $.post(location.origin+'/saveNomination.php',data,function(data){
                var o = JSON.parse(data);
                if(o.result){
                    $("#hNomination .lead").html('<div class="alert alert-success">'+o.msg+'</div>');
                    setTimeout(function(){
                        location.reload();
                    },1500);
                } else {
                    $("#hnominationForm .modal-header").html('<div class="alert alert-danger">'+o.msg+'</div>');
                }
        });
        e.preventDefault();
        return false;
    });         
})();
