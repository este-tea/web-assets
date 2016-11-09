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

        <div class="form-group">
          <label for="">First Name: </label>
          <input class="form-control" name="customerFirstName" type="text" value="">
          <div id="customerFirstNameError" class="initiallyHidden text-danger">Please
            tell us your First Name</div>
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
