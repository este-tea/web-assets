---
layout: default-cable
title:  "CWS-Address Entry Component"
date:   2016-12-15
categories: CWS
---




<div class="container">
  <div class="row">
    <h1 class="page-header">Address Entry</h1>
  </div>
</div>

<!--User who has items in cart and is not logged in:
Warning message appears above prefilled form with option to Log In-->
<div class="container" >
  <div class="tds-alert tds-alert-critical" role="alert">
      <p>It looks like you have items in your shopping cart. Changing your address will empty the cart since availability and prices can vary by location.</p>
  </div>
</div>


<!--User is logged in:
Warning message appears above prefilled form with option to Log In-->
<div class="container" >
  <div class="tds-alert tds-alert-warning" role="alert">
      <p>Please <a href="#">log out</a> if you’d like to shop for products and services at a different address.</p>
  </div>
</div>



<div class="container address-entry">
  <div class="row">
    <h2>To see available products, pricing, and special offers, please provide your address</h2>
  </div>


  <div class="row">
    <div class="col-sm-8 col-xs-12">
      <form>
        <div class="form-group">

          <label for="billingAddressLineOptional">Address: </label>
          <input class="form-control" name="billingAddressLineOptional" id="billingAddressLineOptional" type="text" value="">
          <span class="help-block">Please remove any punctuation (Example: St not St.)</span>
          <span class="help-block" id="billingAddressLineOptionalError" style="display: none;"></span>

        </div>

        <div class="form-group">

          <label for="billingCity">City/Town: </label>
          <input class="form-control" name="billingCity" id="billingCity" type="text" value="">
          <span class="help-block">Please remove any punctuation (Example: St Marys not St. Marys)</span>
          <span class="help-block" id="cityError" style="display: none;"></span>

        </div>

        <div class="form-group">

          <label for="billingState">State: </label>
          <select class="form-control" name="billingState" id="billingState" autofocus="autofocus" autocorrect="off" autocomplete="off">
              <option value="" disabled="" selected="selected">Select State</option>

              <option value="AK" data-alternative-spellings="Alaska">AK</option>

              <option value="AL" data-alternative-spellings="Alabama">AL</option>

              <option value="AR" data-alternative-spellings="Arkansas">AR</option>

              <option value="AZ" data-alternative-spellings="Arizona">AZ</option>

              <option value="CA" data-alternative-spellings="California">CA</option>

              <option value="CO" data-alternative-spellings="Colorado">CO</option>

              <option value="CT" data-alternative-spellings="Connecticut">CT</option>

              <option value="DC" data-alternative-spellings="District of Columbia Washington, D.C.">DC</option>

              <option value="DE" data-alternative-spellings="Delaware">DE</option>

              <option value="FL" data-alternative-spellings="Florida">FL</option>

              <option value="GA" data-alternative-spellings="Georgia">GA</option>

              <option value="HI" data-alternative-spellings="Hawaii">HI</option>

              <option value="IA" data-alternative-spellings="Iowa">IA</option>

              <option value="ID" data-alternative-spellings="Idaho">ID</option>

              <option value="IL" data-alternative-spellings="Illinois">IL</option>

              <option value="IN" data-alternative-spellings="Indiana">IN</option>

              <option value="KS" data-alternative-spellings="Kansas">KS</option>

              <option value="KY" data-alternative-spellings="Kentucky">KY</option>

              <option value="LA" data-alternative-spellings="Louisiana">LA</option>

              <option value="MA" data-alternative-spellings="Massachusetts">MA</option>

              <option value="MD" data-alternative-spellings="Maryland">MD</option>

              <option value="ME" data-alternative-spellings="Maine">ME</option>

              <option value="MI" data-alternative-spellings="Michigan">MI</option>

              <option value="MN" data-alternative-spellings="Minnesota">MN</option>

              <option value="MO" data-alternative-spellings="Missouri">MO</option>

              <option value="MS" data-alternative-spellings="Mississippi">MS</option>

              <option value="MT" data-alternative-spellings="Montana">MT</option>

              <option value="NC" data-alternative-spellings="North Carolina">NC</option>

              <option value="ND" data-alternative-spellings="North Dakota">ND</option>

              <option value="NE" data-alternative-spellings="Nebraska">NE</option>

              <option value="NH" data-alternative-spellings="New Hampshire">NH</option>

              <option value="NJ" data-alternative-spellings="New Jersey">NJ</option>

              <option value="NM" data-alternative-spellings="New Mexico">NM</option>

              <option value="NV" data-alternative-spellings="Nevada">NV</option>

              <option value="NY" data-alternative-spellings="New York">NY</option>

              <option value="OH" data-alternative-spellings="Ohio">OH</option>

              <option value="OK" data-alternative-spellings="Oklahoma">OK</option>

              <option value="OR" data-alternative-spellings="Oregon">OR</option>

              <option value="PA" data-alternative-spellings="Pennsylvania">PA</option>

              <option value="RI" data-alternative-spellings="Rhode Island">RI</option>

              <option value="SC" data-alternative-spellings="South Carolina">SC</option>

              <option value="SD" data-alternative-spellings="South Dakota">SD</option>

              <option value="TN" data-alternative-spellings="Tennessee">TN</option>

              <option value="TX" data-alternative-spellings="Texas">TX</option>

              <option value="UT" data-alternative-spellings="Utah">UT</option>

              <option value="VA" data-alternative-spellings="Virginia">VA</option>

              <option value="VT" data-alternative-spellings="Vermont">VT</option>

              <option value="WA" data-alternative-spellings="Washington">WA</option>

              <option value="WI" data-alternative-spellings="Wisconsin">WI</option>

              <option value="WV" data-alternative-spellings="West Virginia">WV</option>

              <option value="WY" data-alternative-spellings="Wyoming">WY</option>
          </select>
          <span class="help-block" id="billingStateError" style="display: none;"></span>

        </div>

          <button class="gallery-btn pull-left" type="submit" value="Submit">$buttonCTA</button>

      </form>
    </div><!--Form Colume end-->

    <div class="col-sm-4 col-xs-12">
          <div class="tds-alert tds-alert-info">Looking for Business Services? <span class="inline-block">Visit <a href="https://tdsbusiness.com/">www.tdsbusiness.com</a>.</span></div>
    </div>
  </div><!--row end-->

<div class="row">
  <p>We respect your privacy. The information you provide will only be used to retrieve the products and services at your address.</p>
  <p>Already a TDS Customer? <a href="#">Log In</a></p>
</div>


</div><!--address-entry end-->

<hr>

<!--verify address-->
<div class="container address-entry">
  <div class="row">
    <h2>Verify Address</h2>

    <p class="entered-address">Address <a onclick="editAddress()">(edit)</a></p>
    <div class="tds-address">
        <p>109 MAIN ST</p>
        <p>VERONA, WI</p>
    </div>

    <p>Are you sure that's the right address? We couldn't find a
    match but did find similar addresses. Tell us which address you'd
    like us to use:</p>

    <form>
      <!--lists suggested address-->
        <div id="suggestedAddresses">

            <div class="radio">
              <label>
                  <input class="addressRadio" type="radio" name="suggestedAddress" value="109 S MAIN ST,VERONA,WI,53593-1419">
                  <span class="tds-radio-btn"></span>
                  <input id="MS109SMAINST" class="" type="hidden" name="MS109SMAINST" value="?">
                  <input id="MT109SMAINST" class="" type="hidden" name="MT109SMAINST" value="?">
                  <input id="EX109SMAINST" class="" type="hidden" name="EX109SMAINST" value="?">
                  <div class="label-text">
                    <span class="label-address">109 S MAIN ST</span>
                    <span class="label-city-state">VERONA, WI</span>
                  </div>
              </label>
            </div>

            <div class="radio">
              <label>
                  <input class="addressRadio" type="radio" name="suggestedAddress" value="109 S MAIN ST,VERONA,WI,53593-1419">
                  <span class="tds-radio-btn"></span>
                  <input id="MS109SMAINST" class="" type="hidden" name="MS109SMAINST" value="?">
                  <input id="MT109SMAINST" class="" type="hidden" name="MT109SMAINST" value="?">
                  <input id="EX109SMAINST" class="" type="hidden" name="EX109SMAINST" value="?">
                  <div class="label-text">
                    <span class="label-address">109 S MAIN ST</span>
                    <span class="label-city-state">VERONA, WI</span>
                  </div>
              </label>
            </div>

            <div class="radio">
              <label>
                  <input class="addressRadio" type="radio" name="suggestedAddress" value="109 S MAIN ST,VERONA,WI,53593-1419">
                  <span class="tds-radio-btn"></span>
                  <input id="MS109SMAINST" class="" type="hidden" name="MS109SMAINST" value="?">
                  <input id="MT109SMAINST" class="" type="hidden" name="MT109SMAINST" value="?">
                  <input id="EX109SMAINST" class="" type="hidden" name="EX109SMAINST" value="?">
                  <div class="label-text">
                    <span class="label-address">109 S MAIN ST</span>
                    <span class="label-city-state">VERONA, WI</span>
                  </div>
              </label>
            </div>


            <button class="gallery-btn pull-left" type="submit" value="Submit">$buttonCTA</button>
        </div>

    </form>
  </div><!--row end-->
</div><!--verify address end-->


<hr>

<!--Existing Service address -->
<div class="container address-entry">
  <div class="row">
    <h2>Existing Service at this Address</h2>

    <p class="entered-address">Address <a onclick="editAddress()">(edit)</a></p>
    <div class="tds-address">
        <p>109 MAIN ST</p>
        <p>VERONA, WI</p>
    </div>

    <!--Login Section-->
        <div class="col-sm-6">
          <div class="tds-msg-box" id="loginBlock" >
            <h3>I am already a TDS Customer</h3>

            <div id="loginButton">
              <div class="parbase login">
                <fieldset id="loginFieldset">
                  <a class="gallery-btn login" href="#"><i class="fa fa-user pull-left"></i>Log In</a>
                </fieldset>
              </div>
            </div>
          </div>
        </div>
    <!--Login Section End-->


    <!--Address Section-->
        <div class="col-sm-6">
          <div class="tds-msg-box" id="provideAddressBlock">
            <h3>I am moving to this address</h3>

            <div id="provideAddressButton">
              <a class="gallery-btn" href="#"><i class="fa fa-map-marker pull-left"></i> $buttonCTA</a>
            </div>
          </div>
        </div>
    <!--Address Section End-->


  </div><!--row end-->
</div><!--Existing Service address end-->


<hr>

<!--address not found-->
<div class="container">
    <div class="tds-alert tds-alert-warning" role="alert">
    <p>We're sorry, but your address was not found in our systems. We cannot offer you any products at this time. If you have
    questions about TDS service, please call.</p>
    </div>
</div>

<div class="container address-entry">
  <div class="row">
    <h2>Address not Found</h2>

    <p class="h4">You entered:</p>
    <div class="tds-address">
        <p>109 MAIN ST</p>
        <p>VERONA, WI</p>
    </div>

    <p>
      <a onclick="editAddress()">Edit this address</a>
    </p>
  </div>
</div>



<!--address not found end-->





<script src="{{ site.baseurl }}/etc/designs/tds-foundation/tds-styles/bower_components/jquery/dist/jquery.min.js"></script>

<script src="{{ site.baseurl }}/etc/designs/tds-foundation/tds-styles/bower_components/jquery-ui/jquery-ui.min.js"></script>

<script src="{{ site.baseurl }}/etc/designs/tds-foundation/tds-styles/bower_components/selectToAutocomplete/jquery.select-to-autocomplete.js"></script>

<script>
  (function($){
    $(function(){
      $('select').selectToAutocomplete();
      $('form').submit(function(){
        alert( $(this).serialize() );
        return false;
      });
    });
  })(jQuery);
</script>
<div style="height:50px"></div>
