$(document).ready(function(){
		data  = 'education';
		$.post(location.origin+'/Currentawd',data,function(data){
				//console.log(data);
					var o = JSON.parse(data);
					//console.log(o);
					if(o.result == true){
					//console.log(o.msg[0].awd_date);
					function getTimeRemaining(endtime) {
				 var t = Date.parse(o.msg[0].awd_date) - Date.parse(new Date());
				  var seconds = Math.floor((t / 1000) % 60);
				  var minutes = Math.floor((t / 1000 / 60) % 60);
				  var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
				  var days = Math.floor(t / (1000 * 60 * 60 * 24));
				  return {
					'total': t,
					'days': days,
					'hours': hours,
					'minutes': minutes,
					'seconds': seconds
					};}
				function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var daysSpan = clock.querySelector('.days');
  var hoursSpan = clock.querySelector('.hours');
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');

  function updateClock() {
    var t = getTimeRemaining(endtime);

    daysSpan.innerHTML = t.days;
    hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

    if (t.total <= 0) {
      clearInterval(timeinterval);
    }
  }

  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}
				var deadline = new Date(Date.parse(new Date()) + 15 * 24 * 60 * 60 * 1000);
initializeClock('clockdiv', deadline);
					}
					
				});
				
					$( ".list-group-item" ).hover(
  function() {
    $( this ).css('box-shadow', '0px 0px 1px 3px brown');
  }, function() {
   $( this ).css('box-shadow', '');
  }
);
});