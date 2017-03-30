---
layout: default-cable
title:  "CWS-Intercept Page Component"
date:   2017-3-30
categories: CWS
---




<div class="container">
  <div class="row">
    <h1 class="page-header">Serving Territory Intercept Page</h1>
  </div>
</div>


<!--Serving Territory Intercept Message Component: User enters address in Telecom territory-->
<div class="container" >
  <div class="tds-alert tds-alert-warning" role="alert">
    <div class="row">
      <div class="col-md-9 col-sm-7 col-xs-12">
          <p>Your address:
            <span class="userGreeting-address">
            <span class="has-titleCase">${ADDRESS 1} ${ADDRESS 2}, ${CITY}</span>,
            <span class="has-allCaps">${STATE}</span>
            </span> is in another TDS service area.</p>
          <p>Please visit TDSTelecom.com to shop for products and services.</p>

          ${Optional Rich Text Component}

          <p><a href="${Edit Address link}">Edit Address</a> to continue shopping for TDS Cable products and services.</p>
      </div>
      <div class="col-md-3 col-sm-5 col-xs-12">
          <a href="${Telecom address entry link}" role="button" class="gallery-btn pull-right">$btnCTA <span class="sr-only"> $screenReaderTextOption</span></a>
      </div>
    </div>
  </div>
</div>
<!--Serving Territory Intercept Message Component: User enters address in Telecom territory end-->


<!--Serving Territory Intercept Message Component: User enters address in Telecom territory-->
<div class="container" >
  <div class="tds-alert tds-alert-warning" role="alert">
    <div class="row">
      <div class="col-md-9 col-sm-7 col-xs-12">
          <p>Your address:
            <span class="userGreeting-address">
            <span class="has-titleCase">${ADDRESS 1} ${ADDRESS 2}, ${CITY}</span>,
            <span class="has-allCaps">${STATE}</span>
            </span> is in another TDS service area.</p>
          <p>Please visit bendbroadband.com to shop for products and services.</p>

          ${Optional Rich Text Component}

          <p><a href="${Edit Address link}">Edit Address</a> to continue shopping for TDS Cable products and services.</p>
      </div>
      <div class="col-md-3 col-sm-5 col-xs-12">
          <a href="${bendbroadband.com shop link}" role="button" class="gallery-btn pull-right">$btnCTA <span class="sr-only"> $screenReaderTextOption</span></a>
      </div>
    </div>
  </div>
</div>
<!--Serving Territory Intercept Message Component: User enters address in Telecom territory end-->

<!--Login Intercept Message Component: User logs in as a current customer in Telecom territory -->
<div class="container" >
  <div class="tds-alert tds-alert-warning" role="alert">
    <div class="row">
      <div class="col-md-9 col-sm-7 col-xs-12">
          <p>You are currently a TDS Telecom customer.</p>
          <p>Please visit TDSTelecom.com to shop for products and services.</p>

          ${Optional Rich Text Component}

          <p><a href="${LOGOUT LINK}">Log out</a> to continue shopping for TDS Cable products and services.</p>
      </div>
      <div class="col-md-3 col-sm-5 col-xs-12">
          <a href="${SSO LINK}" role="button" class="gallery-btn pull-right">$btnCTA <span class="sr-only"> $screenReaderTextOption</span></a>
      </div>
    </div>
  </div>
</div>
<!--Login Intercept Message Component: User logs in as a current customer in Telecom territory end-->


<!--Login Intercept Message Component: User logs in as a current customer in Bend territory -->
<div class="container" >
  <div class="tds-alert tds-alert-warning" role="alert">
    <div class="row">
      <div class="col-md-9 col-sm-7 col-xs-12">
          <p>You are currently a BendBroadband customer.</p>
          <p>Please visit bendbroadband.com to shop for products and services.</p>

          ${Optional Rich Text Component}

          <p><a href="${LOGOUT LINK}">Log out</a> to continue shopping for TDS Cable products and services.</p>
      </div>
      <div class="col-md-3 col-sm-5 col-xs-12">
          <a href="${SSO LINK}" role="button" class="gallery-btn pull-right">$btnCTA <span class="sr-only"> $screenReaderTextOption</span></a>
      </div>
    </div>
  </div>
</div>
<!--Login Intercept Message Component: User logs in as a current customer in Bend territory  end-->

<div style="height:50px"></div>
