<?php require_once('header.php'); ?>
<style>
.nomination-form .form-group .form-control{
        border-color: #CCCCCC;
}
input[name='nomType']{
    margin-right:10px;
}
.individualForm, .orgForm{
    display:none;
}
</style>



<section id="hNomination">
    <div class="container">
        <div class="center">        
            <h2>Submit Your Nomination</h2>
            <p class="lead"></p>
        </div>         
        <div class="row contact-wrap"> 
            <div class="status alert alert-success" style="display: none"></div>
            <form id="hnominationForm" class="nomination-form" name="nomination-form" method="post">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="form-group">
                        <label>Nomination Type *</label>
                        <div class="form-control" style="border:none;">
                            Individual: <input required class="nomType" type="radio" name="nomType" value = 'individual'>
                            Organization: <input required class="nomType" type="radio" name="nomType" value = 'organization'>
                        </div>
                    </div>                    
                </div> 
                <div class="col-sm-5 col-sm-offset-1">
                <div class="row-1 individualForm">    
                    <div class="form-group">
                        <label>Nominee Name *</label>
                        <input type="text" name="nName" id="nName" class="form-control" placeholder="Nominee's name">
                    </div>
                    <div class="form-group">
                        <label>Landline</label>
                        <input type="text" class="form-control" id="nLandline" name="nLandline" placeholder="Nominee's landline">
                    </div>        
                </div>
                <div class="row-1 orgForm">    
                    <div class="form-group">
                        <label>Organization/Clinic/Hospital Name *</label>
                        <input type="text" name="orgName" id="orgName" class="form-control" placeholder="Organization/Clinic/Hospital name">
                    </div>
                    <div class="form-group">
                        <label>Landline</label>
                        <input type="text" class="form-control" id="orgLandline" name="orgLandline" placeholder="Nominee's landline">
                    </div>        
                </div>                    
                <div class="row-2">
                    <div class="form-group">
                        <label>Contact Person Name *</label>
                        <input type="text" name="cpName" id="cpName" class="form-control" required="required" placeholder="Contact persons's name">
                    </div>
                    <div class="form-group">
                        <label>Landline</label>
                        <input type="tel" class="form-control" id="cpLandline" name="cpLandline" placeholder="Contact person's landline">
                    </div>                 
                </div>    
 
                <div class="row-3">    
                    <div class="form-group">
                        <label>Award Category</label>
                        <input type="text" name="category" id="category" class="form-control" placeholder="Award Category">
                    </div>                    
                    <div class="form-group">
                        <label>Designation</label>
                        <input type="text" name="nDesignation" id="nDesignation" class="form-control" placeholder="Nominee's Designation">
                    </div>
                    <div class="form-group">
                        <label>Any Accreditations &amp;/or Certifications Previously Won </label><br>
                        No:&nbsp;<input type="radio" name="nPevAccredations" value="no">&nbsp;&nbsp;&nbsp;
                        Yes:&nbsp;<input type="radio" name="nPevAccredations" value="yes">
                    </div>    
                </div> 
                    
                <div class="row-4">    
                    <div class="form-group">
                        <label>Street Address</label>
                        <input type="text" name="streetAdd" id="streetAdd" class="form-control" placeholder="Street address">
                    </div>
                    <div class="form-group">
                        <label>State</label>
                        <input type="text" name="state" id="state" class="form-control" placeholder="State">
                    </div>    
                </div>                   

                <div class="row-5">    
                    <div class="form-group">
                        <label>Year Of Inception</label>
                        <input type="text" name="yInception" id="yInception" class="form-control" placeholder="Year of inception">
                    </div>
                    <div class="form-group">
                        <label>Type of Service/Product Offered</label>
                        <input type="text" name="products" id="products" class="form-control" placeholder="Type of Service/Product Offered">
                    </div>        
                </div>                                   
                </div>
                <div class="col-sm-5">
                <div class="row-1 orgForm">    
                    <div class="form-group">
                        <label>Director/Chairmen Email *</label>
                        <input type="email" name="orgEmail" id="orgEmail" class="form-control" placeholder="Director/Chairmen's name">
                    </div>
                    <div class="form-group">
                        <label>Director/Chairmen Mobile *</label>
                        <input type="text" class="form-control" id="orgMobile" name="orgMobile" placeholder="Director/Chairmen's mobile">
                    </div>                       
                </div>
                <div class="row-1 individualForm">    
                    <div class="form-group">
                        <label>Nominee Email *</label>
                        <input type="email" name="nEmail" id="nEmail" class="form-control" placeholder="Nominee's name">
                    </div>
                    <div class="form-group">
                        <label>Mobile *</label>
                        <input type="text" class="form-control" id="nMobile" name="nMobile" placeholder="Nominee's mobile">
                    </div>                       
                </div>                    
                <div class="row-2">
                    <div class="form-group">
                        <label>Contact Person Email</label>
                        <input type="email" name="cpEmail" class="form-control" placeholder="Contact Person's name">
                    </div>
                    <div class="form-group">
                        <label>Mobile</label>
                        <input type="tel" class="form-control" id="cpMobile" name="cpMobile" placeholder="Contact Person's mobile">
                    </div>     
                </div>
                <div class="row-3">  
                    <div class="form-group">
                        <label>Award Sub-Category</label>
                        <input type="text" name="subCategory" id="subCategory" class="form-control" placeholder="Sub Category">
                    </div>                                
                    <div class="form-group">
                        <label>Nomination Level</label>
                        <input type="text" name="nLevel" id="nLevel" class="form-control" placeholder="Nomination Level">
                    </div>
                    <div class="form-group">
                        <label>Any Awards &amp;/or Achievements Previously Won </label><br>
                        No:&nbsp;<input type="radio" name="nPevAwards" value="no">&nbsp;&nbsp;&nbsp;
                        Yes:&nbsp;<input type="radio" name="nPevAwards" value="yes">
                    </div>                    
                </div>
                <div class="row-4">    
                    <div class="form-group">
                        <label>City</label>
                        <input type="text" name="city" id="city" class="form-control" placeholder="City">
                    </div>
                    <div class="form-group">
                        <label>Pincode</label>
                        <input type="text" name="pincode" id="pincode" class="form-control" placeholder="Pincode">
                    </div>    
                </div>
                <div class="row-5">    
                    <div class="form-group">
                        <label>Turnover for Last Financial Year (in digit)</label>
                        <input type="text" name="turnover" id="yInception" class="form-control" placeholder="Turnover for Last Financial Year (in digit)">
                    </div>
                    <div class="form-group">
                        <label>Invitation send by*</label>
                        <select name="agent" id="agent" class="form-control" required>
                            <option value="" seleced="selected" disabled>Select agent</option>
                            <option value="1">Select agent</option>
                            <option value="2">Sana</option>
                            <option value="3">Sonia</option>
                            <option value="4">Priyanka</option>
                            <option value="5">Sarita</option>
                            <option value="6">Rohit</option>
                            <option value="7">Pooja</option>
                            <option value="8">Sneha</option>
                            <option value="9">Rakesh</option>
                            <option value="10">Swati</option>
                            <option value="11">Shivam</option>
                        </select>
                    </div>    
                </div> 
                </div>
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="form-group">
                        <label>How do you come to know about National Healthcare Excellence Awards, 2016</label>
                        <select name="howKnow" id="howKnow" class="form-control">
                            <option value="" seleced="selected" disabled>Select how you know us</option>
                            <option value="1">Advertisement</option>
                            <option value="2">Website</option>
                            <option value="3">E-mail</option>
                            <option value="4">any other</option>
                        </select>
                    </div>                    
                </div>
                <div class="col-sm-10 col-sm-offset-1">
                    <label>Remarks / Comments (if any)</label>
                    <textarea class="form-control" name="comments" rows="3" placeholder="Remarks / Comments (if any)"></textarea>
                </div>  

                <div class="col-sm-10 col-sm-offset-1">
                    <label>Terms & Conditions*</label>
                    <input required type="checkbox" name="tnc" value="aggreed">  By filling and submitting the nomination form, I declare that I have read and understood the Application, Selection process and the Terms & Conditions of the National Healthcare Excellence Awards, 2016. I hereby agree and accept the same. I further declare that information provided in the nomination form is true to the best of my knowledge and belief.
                    <div class="form-group">
                        <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Nomination</button>
                    </div>  
                </div>  
            </form> 
        </div><!--/.row-->
    </div><!-- #container -->    
</section><!-- #hNomination ends-->    

<script>                
window.onload = function(e){
    $('input[name="nomType"]').on('change', function(e){
       if( $('input[name="nomType"]:checked').val() == 'individual'){
            $('.orgForm').slideUp();
            $('.orgForm').find('input').each(function(){
                $(this).val('');
            });
            
            $('.individualForm').slideDown('slow');
       } else{
            $('.individualForm').slideUp();
            $('.individualForm').find('input').each(function(){
                $(this).val('');
            });            
            $('.orgForm').slideDown('slow');           
       }
    });
}    
    
</script>    

<?php require_once('footer.php'); ?>
