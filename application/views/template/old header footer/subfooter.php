<footer class="style-1">
            <div class="container">
				   <div class="row">
                <div class="col-md-3">
                    <div class="footer-contact-info">
                        <h4>Links</h4>
                        <ul>
                            <li><strong>E-mail :</strong> your-email@mail.com</li>
                            <li><strong>Phone :</strong> +8801-6778776</li>
                            <li><strong>Mobile :</strong> +8801-45565378</li>
                            <li><strong>Web :</strong> yourdomain.com</li>
                        </ul>
                    </div>
                </div>
				 <div class="col-md-3">
                    <div class="footer-contact-info">
                        <h4>Sectors</h4>
                        <ul>
                            <li><strong>E-mail :</strong> your-email@mail.com</li>
                            <li><strong>Phone :</strong> +8801-6778776</li>
                            <li><strong>Mobile :</strong> +8801-45565378</li>
                            <li><strong>Web :</strong> yourdomain.com</li>
                        </ul>
                    </div>
                </div>
				 <div class="col-md-3">
                    <div class="footer-contact-info">
                        <h4>Partners</h4>
                        <ul>
                            <li><strong>E-mail :</strong> your-email@mail.com</li>
                            <li><strong>Phone :</strong> +8801-6778776</li>
                            <li><strong>Mobile :</strong> +8801-45565378</li>
                            <li><strong>Web :</strong> yourdomain.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-contact-info">
                        <h4>Get In Touch</h4>
                         <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" rows="6" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-primary">Send Message</button>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
				
            </div>

			   <div class="row" style="    padding: 15px;">
                    <div class="col-md-4 col-xs-12">
                        <span class="copyright">Copyright &copy; <a href="http://guardiantheme.com">GuardinTheme</a> 2015</span>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="footer-social text-center">
                            <ul>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="footer-link">
                            <ul class="pull-right">
                                <li><a href="#">Privacy Policy</a>
                                </li>
                                <li><a href="#">Terms of Use</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
  


    <div id="loader">
        <div class="spinner">
            <div class="dot1"></div>
            <div class="dot2"></div>
        </div>
    </div>

    

    <!-- jQuery Version 2.1.1 -->
    <script src="<?php echo base_url('assets/js/jquery-2.1.1.min.js');?>"></script>
	<script>
	function initMap() {
  var myLatLng = {lat: 28.556401,lng: 77.175134};

  // Create a map object and specify the DOM element for display.
  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    scrollwheel: false,
    zoom: 16
  });

  // Create a marker and set its position.
  var marker = new google.maps.Marker({
    map: map,
    position: myLatLng,
    title: 'Prime Time Research Media Pvt. Ltd.'
  });
}
	</script>
	
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4QdxalsJoSEa00gy6vni3HshofcVl_fE&callback=initMap"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url('assets/js/bootstrap.min.js');?>"></script>

    <!-- Plugin JavaScript -->
    <script src="<?php echo base_url('assets/js/jquery.easing.1.3.js');?>"></script>
    <script src="<?php echo base_url('assets/js/classie.js');?>"></script>
    <script src="<?php echo base_url('assets/js/count-to.js');?>"></script>
    <script src="<?php echo base_url('assets/js/jquery.appear.js');?>"></script>
    <script src="<?php echo base_url('assets/js/cbpAnimatedHeader.js');?>"></script>
    <script src="<?php echo base_url('assets/js/owl.carousel.min.js');?>"></script>
	<script src="<?php echo base_url('assets/js/jquery.fitvids.js');?>"></script>
	<script src="<?php echo base_url('assets/js/styleswitcher.js');?>"></script>

    <!-- Contact Form JavaScript -->
    <script src="<?php echo base_url('assets/js/jqBootstrapValidation.js');?>"></script>
    <script src="<?php echo base_url('assets/js/contact_me.js');?>"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url('assets/js/script.js');?>"></script>

</body>

</html>
