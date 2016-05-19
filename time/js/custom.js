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
})();