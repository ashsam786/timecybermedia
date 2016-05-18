<style>
.nav>li>a{
	color:#fff;
} 
</style>
	<div class="row" style="text-align:center; background-color: #E2E8F1;">
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist" style="background-color: #EA5B4D;">
		<li role="presentation" class="active"><a href="#organization" aria-controls="organization" role="tab" data-toggle="tab">Organization</a></li>
		<li role="presentation"><a href="#individual" aria-controls="individual" role="tab" data-toggle="tab">Individual</a></li>
	  </ul>	
	  <div class="tab-content">
	<?php 
		switch($category){
			case 'business':
				echo '<div role="tabpanel" class="tab-pane active" id="organization">';
				echo '<iframe src="https://docs.google.com/forms/d/19lUCLf9XN_khfKBr0fqXNlvc-4_D7sYxx6F0J4sXCx4/viewform?embedded=true" width="760" height="1600px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';
				echo '<div role="tabpanel" class="tab-pane" id="individual">';
				echo '<iframe src="https://docs.google.com/forms/d/1IVMv9wUvLXx6Hg2CV9-DbOJJdX0379oUbHRZrxap4TI/viewform?embedded=true" width="760" height="1600px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';				
				break;
			case 'education':
				echo '<div role="tabpanel" class="tab-pane active" id="organization">';
				echo '<iframe src="https://docs.google.com/forms/d/1E0Rabo6otEYdw161S81TQbe5frx8KJXkiQEm5arsyW4/viewform?embedded=true" width="760" height="1600px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';
				echo '<div role="tabpanel" class="tab-pane" id="individual">';
				echo '<iframe src="https://docs.google.com/forms/d/1iStGDVyPpDfedMt0H2fNZPtQY_h_VrU4_9kF3ZFibkY/viewform?embedded=true" width="760" height="1600px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';	
				break;
			case 'healthcare':
				echo '<div role="tabpanel" class="tab-pane active" id="organization">';
				echo '<iframe src="https://docs.google.com/forms/d/1ME01bzPSx241hEBE5pK_J_6bfyd_6S5K9Mo2ickAoQ0/viewform?embedded=true" width="760" height="1600px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';

				echo '<div role="tabpanel" class="tab-pane" id="individual">';
				echo '<iframe src="https://docs.google.com/forms/d/1FnnA5ajyt-yWS2epNgw1Z799CXfOg4uw9QGBIlIhByI/viewform?embedded=true" width="760" height="1600px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';				
				break;
			case 'dental':
				echo '<div role="tabpanel" class="tab-pane active" id="organization">';
				echo '<iframe src="https://docs.google.com/forms/d/1RGkjItWKRrFpvS_f0TPKHKxckKQmxmlgRXMCwu0u56g/viewform?embedded=true" width="600px" height="1670px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';
				echo '<div role="tabpanel" class="tab-pane" id="individual">';
				echo 'Individual form';				
				echo '</div>';
				break;
			case 'lifestyle':
				echo '<div role="tabpanel" class="tab-pane active" id="organization">';
				echo '<iframe src="https://docs.google.com/forms/d/1Am8VKaIE0logpxpk7yWMr6aTtORBL-rivQd7U5VVt4Q/viewform?embedded=true" width="600" height="1670px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';
				echo '</div>';
				echo '<div role="tabpanel" class="tab-pane" id="individual">';
				echo '<iframe src="https://docs.google.com/forms/d/1Am8VKaIE0logpxpk7yWMr6aTtORBL-rivQd7U5VVt4Q/viewform?embedded=true" width="600" height="1670px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>';				
				echo '</div>';
				break;
		}
	?>
	</div></div>