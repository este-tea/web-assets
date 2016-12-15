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


<!--User who has items in cart and is not logged in:
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

              <option value="AK">AK</option>

              <option value="AL">AL</option>

              <option value="AR">AR</option>

              <option value="AZ">AZ</option>

              <option value="CA">CA</option>

              <option value="CO">CO</option>

              <option value="CT">CT</option>

              <option value="DC">DC</option>

              <option value="DE">DE</option>

              <option value="FL">FL</option>

              <option value="GA">GA</option>

              <option value="HI">HI</option>

              <option value="IA">IA</option>

              <option value="ID">ID</option>

              <option value="IL">IL</option>

              <option value="IN">IN</option>

              <option value="KS">KS</option>

              <option value="KY">KY</option>

              <option value="LA">LA</option>

              <option value="MA">MA</option>

              <option value="MD">MD</option>

              <option value="ME">ME</option>

              <option value="MI">MI</option>

              <option value="MN">MN</option>

              <option value="MO">MO</option>

              <option value="MS">MS</option>

              <option value="MT">MT</option>

              <option value="NC">NC</option>

              <option value="ND">ND</option>

              <option value="NE">NE</option>

              <option value="NH">NH</option>

              <option value="NJ">NJ</option>

              <option value="NM">NM</option>

              <option value="NV">NV</option>

              <option value="NY">NY</option>

              <option value="OH">OH</option>

              <option value="OK">OK</option>

              <option value="OR">OR</option>

              <option value="PA">PA</option>

              <option value="RI">RI</option>

              <option value="SC">SC</option>

              <option value="SD">SD</option>

              <option value="TN">TN</option>

              <option value="TX">TX</option>

              <option value="UT">UT</option>

              <option value="VA">VA</option>

              <option value="VT">VT</option>

              <option value="WA">WA</option>

              <option value="WI">WI</option>

              <option value="WV">WV</option>

              <option value="WY">WY</option>
          </select>
          <span class="help-block" id="billingStateError" style="display: none;"></span>

        </div>

          <button class="gallery-btn pull-left" type="submit" value="Submit">$buttonCTA</button>

      </form>
    </div><!--Form Colume end-->

    <div class="col-sm-4 col-xs-12">
          <div class="tds-alert tds-alert-info">Looking for Business Services? <span class="inline-block">Visit <a href="#">www.tdsbusiness.com</a>.</span></div>
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
