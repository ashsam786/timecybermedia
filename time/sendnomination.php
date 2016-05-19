<?php

require_once('header.php');

if(!isset($_SESSION['email']) || empty($_SESSION['email'])){
	header('Location: agent.php');
}else{


/* $email = $_SESSION['email'];
$name = $_SESSION['agent']; */
?>	

   <section id="send-nomination">
        <div class="container">
            <div class="center">        
                <h2>Send Nomination</h2>
                <p class="lead"></p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="sndNomForm" class="contact-form" name="sndNomForm" method="post" action="">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Client Name: *</label>
                            <input type="text" name="cName" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Client Email *</label>
                            <input type="email" name="cEmail" class="form-control" required="required">
                        </div>
                    </div>
                    <div class="col-sm-11 col-sm-offset-1">
                        <div class="form-group">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>
                        </div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#send-nomination-page-->



<?php
require_once('footer.php');
}
?>