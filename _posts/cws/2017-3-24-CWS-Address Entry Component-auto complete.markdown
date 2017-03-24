---
layout: default-cable
title:  "CWS-Address Entry Component 2.0"
date:   2017-3-24
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

<!--outOfServiceMessage error messages-->
  <div class="container" id="out-of-service-area">
      <div role="alert" class="tds-alert tds-alert-warning">
        <p>
        {outOfServiceMessage}
        </p>
      </div>
    </div>

  <div class="container" id="errors">
      <div role="alert" class="tds-alert tds-alert-critical">
        <p>{criticaleMessage}</p>
      </div>
  </div>
<!--outOfServiceMessage error messages end-->

<!--address-entry-->
<div class="container address-entry">
  <div class="row">
    <h2>To see available products, pricing, and special offers, <span class="inline-block">please provide your zip code</span> and address</h2>
  </div>


  <div class="row">
    <div class="col-sm-8 col-xs-12">
      <form id="addressForm">
        <div class="ui-widget">
          <div id="zip-container" class="form-group tds-form-group">
            <label for="zip">Zip Code</label>
            <input type="text" name="zip" id="zip" class="form-control">
          </div>
          <div id="term-container"class="form-group">
            <label for="term">${labelText}</label>
            <input id="term" type="text" name="term" class="form-control" style="text-transform: capitalize" value="">
            <p class="help-block">${helpText}</p>
          </div>
          <input type="hidden" id="address" name="address">
          <button id="address-submit" type="submit" class="gallery-btn pull-left">${buttonText}</button>
        </div>
      </form>
    </div>
    <!--Form Colume end-->

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

    <p class="entered-address">Address <a onclick="editAddress()" tabindex="0">(edit)</a></p>
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

    <p class="entered-address">Address <a onclick="editAddress()" tabindex="0">(edit)</a></p>
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
      <a onclick="editAddress()" tabindex="0">Edit this address</a>
    </p>
  </div>
</div>



<!--address not found end-->





<div style="height:50px"></div>
