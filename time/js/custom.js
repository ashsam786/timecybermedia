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
	})
})();