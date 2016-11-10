---
layout: default-cable
title:  "CWS-Checkout questions"
date:   2016-11-8
categories: CWS
---

<!--user name or address bar-->
<div class="container title-user-address">
  <div class="row" >
    <p>Address: <strong>811 North Edge Trl, Verona, WI</strong> <a href="#">change</a></p>
  </div>
</div>
<!--user name or address bar end-->

<!--Warring bar-->
<div class="container warning-cartEmpty">
  <div class="row" >
    <p>Your shopping cart is empty. <a href="#">Shop our site to find product pricing and availability information.</a></p>
  </div>
</div>
<!--Warring bar end-->

<!--Error bar-->
<div class="container alert-critical">
  <div class="row" >
    <p>Please fix errors before submitting. <a href="#">(Calls out invalid fields)</a></p>
  </div>
</div>
<!--Error bar end-->

<div class="container">
  <div class="row" >
        <h2 class="hr-after-text">Customer Information</h2>

        <div class="form-group tds-form-group">
            <label for="firstName">First Name</label>
            <input type="text" class="form-control" name="firstName" id="firstName">
            <span class="help-block" id="firstName-error" style="display: none;"></span>
        </div>

        <div class="form-group tds-form-group">
            <label>Last Name</label>
            <input type="text" class="form-control" name="lastName" id="lastName">
            <span class="help-block" id="lastName-error" style="display: none;"></span>
        </div>

        <div class="form-group tds-form-group">
            <label for="contactTel">Contact Tel. No.</label>
            <input type="text" class="form-control" name="contactTel" id="contactTel">
            <span class="help-block">Format:&nbsp;##########</span>
            <span class="help-block" id="contactTel-error" style="display: none;"></span>
        </div>


        <div class="form-group tds-form-group">
          <label for="contactTime">Best time of day to reach you?</label>
            <div class="radio">
              <label>
                <input type="radio" name="contactTime" value="no">
                <span class="tds-radio-btn"></span>
                <div class="label-text">Morning</div>
              </label>
            </div>
            <div class="radio">
              <label>
                <input type="radio" name="contactTime" value="new">
                <span class="tds-radio-btn"></span>
                <div class="label-text">Afternoon</div>
              </label>
            </div>
            <div class="radio">
              <label>
                <input type="radio" name="contactTime" value="yes">
                <span class="tds-radio-btn"></span>
                <div class="label-text">All day</div>
              </label>
              <span class="help-block" id="contactTime-error" style="display: none;"></span>
        </div>

        <div class="form-group">
            <label for="contactEmail">Contact Email Address</label>
            <input type="text" class="form-control" name="contactEmail" id="contactEmail">
            <span class="help-block" id="contactEmail-error" style="display: none;"></span>


            <div class="checkbox">
              <label>
                <input name="subscribeToEmail" type="checkbox" checked="checked">
                <span class="tds-radio-btn"></span>
                <div class="label-text">I would like to receive occasional updates from TDS via email with information about new product
                features and special offers. Visit our <a href="#" target="_blank">
                  Email Subscriptions page</a></div>
              </label>
            </div>
        </div>

  </div>
</div>



<div class="container">
  <div class="row" >
        <h2 class="hr-after-text">Address Information</h2>

<div id="serviceAddressBlock">
        <h3 class="subsectionTitle">Service Address</h3>


        <label for="customerServiceAddressLineInput">Address:</label>
          <div id="customerServiceAddressLine" class="form-address">
            104 S MAIN ST
          </div>

          <input id="customerServiceAddressLineInput" name="customerServiceAddressLine" type="hidden" value="104 S MAIN ST">

<div>
        <label for="customerServiceCityInput">City:</label>
          <div id="customerServiceCity" class="form-address">
            VERONA
          </div>
          <input id="customerServiceCityInput" name="customerServiceCity" type="hidden" value="VERONA">
</div>
        <label for="customerServiceStateInput">State:</label>
          <div id="customerServiceState" class="form-address">
            WI
          </div>
          <input id="customerServiceStateInput" name="customerServiceState" type="hidden" value="WI">

<div>
        <label for="customerServiceZipInput">Zip Code:</label>
          <div id="customerServiceZip" class="form-address">
            53593
          </div>
          <input id="customerServiceZipInput" name="customerServiceZip" type="hidden" value="53593">
</div>

  </div>
</div>
</div>


<div class="container">
    <div class="row" >
        <div class="input-group date" style="margin-bottom:100px">
            <input type="text" class="form-control" id="installData"><span class="input-group-addon">icon</span>
        </div>
    </div>
</div>




<script>
$('.input-group.date').datepicker({
    startDate: "+4d",
    daysOfWeekDisabled: "0,6",
    datesDisabled: ['11/24/2016, 12/25/2016'],
    orientation: "bottom left",
});
</script>
