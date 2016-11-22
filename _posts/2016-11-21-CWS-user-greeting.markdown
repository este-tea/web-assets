---
layout: default-cable
title:  "CWS-User Greeting"
date:   2016-11-21
categories: CWS
---


<!--User with address for TDS Cable -->
<div class="tds-error-msg tds-error-info">
  <div class="container" >
    <p>Address: <span class="userGreeting-address"><span class="has-titleCase">${ADDRESS 1} ${ADDRESS 2}, ${CITY}</span>, <span class="has-allCaps">${STATE}</span></span>. <a href="/visitor/address-entry.html?redirectDestination=%2Fshop.html">Edit address</a></p>
  </div>
</div>


<!--User with address for Bend Broadband-->
<div class="tds-alert tds-alert-warning">
  <div class="container" >
      <p>The address you entered is in the BendBroadband serving territory. Please visit <a href="https://www.bendbroadband.com">https://www.bendbroadband.com</a> to find available products and services.</p>
  </div>
</div>

<!--User with address for TDS Telecom-->
<div class="tds-alert tds-alert-warning">
  <div class="container" >
      <p>The address you entered is in the TDS Telecom serving territory. Please visit <a href="https://www.tdstelecom.com/shop.html">https://www.tdstelecom.com</a> to find available products and services.</p>
  </div>
</div>


<!--User has logged in for Shopping-->
<div class="tds-error-msg tds-error-info">
  <div class="container" >
     <p>You're logged in as ${USERNAME}. <a href="${LOGOUT LINK}">Log Out</a>.</p>
 </div>
</div>

<div style="height:50px"></div>
