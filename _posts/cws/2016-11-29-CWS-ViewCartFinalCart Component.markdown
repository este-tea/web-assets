---
layout: default-cable
title:  "CWS-ViewCart FinalCart Review Component"
date:   2016-11-30
categories: CWS
---

<div class="container">
  <div class="row">
    <h1 class="page-header">View Cart/Final Cart Review</h1>
  </div>
</div>


<div class="container" >
  <div class="tds-alert tds-alert-critical">
      <p>In order to proceed, please fix the following item(s):</p>
      <ul>
        <li>Error message one</li>
        <li>Error message two</li>
      </ul>
  </div>
</div>

<div class="container" >
  <div class="tds-alert tds-alert-warning">
      <p>Your shopping cart is empty. <a href="${LinkToMainPkgComparisonPage}">Shop our site</a> to find product pricing and availability
information!</p>
  </div>
</div>




<div class="container">

<!--Only on final review page: Cart submission top button-->
<div class="row">
    <div class="cart-overview-actions form-inline">
    <form class="pull-right form-group" name="checkout" action="?" method="POST">
        <input type="hidden" name="currentRevisionNumber" value="?">
        <input type="hidden" name="beginCheckout" value="true">
        <input type="hidden" name="pageId" value="?">
        <button id="beginCheckout" class="gallery-btn btn-green" type="submit" value="$buttonCTA">$buttonCTA</button>
    </form>
  </div>
</div><!--Only on final review page: Cart submission top button end-->

<!--Big Package-->
  <div class="row">
    <section class="bundle-lineitems cart-review-container">

      <!--Package Header-->
            <div class="cart-review-header">
              <h2 class="package-title col-md-9 col-sm-12">Package Name</h2>

              <!--<div class="line-item-actions col-md-3 col-sm-12"> and containing content is removed in final cart page -->
              <div class="line-item-actions col-md-3 col-sm-12">
                  <form class="form-group" action="?" method="POST">
                      <a class="btn tds-btn-gray tds-icon-pencil" href="#">Edit</a>
                      <input type="hidden" name="currentRevisionNumber" value="?">
                      <input type="hidden" name="removeItems" value="removeLineItem">
                      <input type="hidden" name="lineItemId" value="?">
                      <button class="btn tds-btn-gray tds-icon-times" type="submit">Remove</button>
                  </form>
              </div>


            </div><!--Package Header end-->

            <!--Package Product-->
            <h3 class="line-item-title">Internet Services</h3>
            <table class="table">
              <tbody>
                <tr>
                  <td>1 Gig Fiber Internet</td>
                  <td class="tds-cost-price">$xx.xx<span>/mo for xx months</span></td>
                </tr>

                <tr>
                    <td>4-port Wireless V1000H Gateway Modem</td>
                    <td class="tds-cost-price">$4.95<span>/mo</span></td>
                </tr>

                <tr class="tds-alert tds-alert-critical">
                    <td>Remote PC Support</td>
                    <td class="tds-cost-price">$0.00<span>/mo</span></td>
                </tr>

                <tr>
                    <td>TDS Internet Security</td>
                    <td class="tds-cost-price">FREE <span>for 30 Days</span></td>
                </tr>
              </tbody>
          </table><!--Package Product end-->


          <!--Package Product-->
          <h3 class="line-item-title">TV Services</h3>
          <table class="table">
              <tbody>
                <tr>
                  <td>Basic</td>
                  <td class="tds-cost-price">$xx.xx<span>/mo for xx months</span></td>
                </tr>

                <tr>
                    <td>High Definition Upgrade</td>
                    <td class="tds-cost-price">$XX.XX<span>/mo</span></td>
                </tr>

                <tr>
                    <td>Connected Home DVR</td>
                    <td class="tds-cost-price">$4.95<span>/mo</span></td>
                </tr>

                <tr>
                    <td>Wireless Set Top Box (Qty: 2)</td>
                    <td class="tds-cost-price">$XX.XX<span>/mo</span></td>
                </tr>

                <tr>
                    <td>HBO</td>
                    <td class="tds-cost-price">FREE <span>for 30 Days</span></td>
                </tr>

                <tr>
                    <td>Professional Installation</td>
                    <td class="tds-cost-price">$XX.XX <span>one-time fee</span></td>
                </tr>
            </tbody>
          </table><!--Package Product end-->

          <!--Package Product-->
          <h3 class="line-item-title">Phone Services</h3>
          <table class="table">
              <tbody>
                <tr>
                  <td>1 Gig Fiber Internet</td>
                  <td class="tds-cost-price">$xx.xx<span>/mo for xx months</span></td>
                </tr>

                <tr>
                    <td>4-port Wireless V1000H Gateway Modem</td>
                    <td class="tds-cost-price">$4.95<span>/mo</span></td>
                </tr>

                <tr>
                    <td>Remote PC Support</td>
                    <td class="tds-cost-price">$0.00<span>/mo</span></td>
                </tr>

                <tr>
                    <td>TDS Internet Security</td>
                    <td class="tds-cost-price">FREE <span>for 30 Days</span></td>
                </tr>
            </tbody>
          </table><!--Package Product end-->

    </section>
  </div><!--Big Package End-->


      <!--Addon Single Line items-->
        <div class="row">
          <section class="bundle-lineitems cart-review-container ">

            <!--Package Header-->
                  <div class="cart-review-header">
                    <h2 class="package-title col-md-9 col-sm-12">Package Name</h2>

                    <!--<div class="line-item-actions col-md-3 col-sm-12"> and containing content is removed in final cart page -->
                    <div class="line-item-actions col-md-3 col-sm-12">
                        <form class="form-group" action="?" method="POST">
                            <a class="btn tds-btn-gray tds-icon-pencil" href="#">Edit</a>
                            <input type="hidden" name="currentRevisionNumber" value="?">
                            <input type="hidden" name="removeItems" value="removeLineItem">
                            <input type="hidden" name="lineItemId" value="?">
                            <button class="btn tds-btn-gray tds-icon-times" type="submit">Remove</button>
                        </form>
                    </div>

                  </div><!--Package Header end-->

                  <!--Package Product-->
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>3 Star Voice Package: Add On</td>
                        <td class="tds-cost-price">$xx.xx<span>/mo</span></td>
                      </tr>

                      <tr>
                        <td>Local Service: Additional Features</td>
                        <td class="tds-cost-price">$xx.xx<span>/mo</span></td>
                      </tr>
                  </tbody>
                </table><!--Package Product end-->

            </section>
          </div><!--Addon Single Line items end-->




  <!--Taxes and Fees-->
  <div class="row">
    <section class="cart-review-container ">
            <h3 class="line-item-title">Estimated Taxes &amp; Fees</h3>
            <table class="table">
              <tbody>
                <tr>
                  <td>3-Star Taxes and Fees</td>
                  <td class="tds-cost-price">$8.86<span>/mo</span></td>
                </tr>

              <tr>
                  <td>Professional Installation Fee</td>
                  <td class="tds-cost-price">$49.95 <span>one-time fee</span></td>
              </tr>
            </tbody>
          </table>
    </section>
  </div><!--Taxes and Fees end-->


<!--Order Totals-->
  <div class="row">
    <section class="order-totals cart-review-container ">
            <h2>Order Total</h2>
            <table class="table">
              <tbody>
                <tr>
                  <td>One-time costs</td>
                  <td class="tds-cost-price cost-one-time">$49.95</td>
                </tr>

              <tr>
                  <td>One-time credits</td>
                  <td class="tds-cost-price cost-one-time">($49.95)</td>
              </tr>

              <tr>
                  <td><strong>MONTHLY CHARGES</strong></td>
                  <td class="tds-cart-price"><strong>$176.07</strong></td>
              </tr>
            </tbody>
          </table>
    </section>
  </div><!--Order Totals end-->


<!--Cart overview action and submission-->
<div class="row">
  <div class="cart-overview-actions form-inline">
      <button id="printButton" class="btn tds-btn-gray form-group"><i class="fa fa-print"></i> Print</button>
      <form class="form-group" name="empty" action="/bin/cart/cart" method="POST">
          <input type="hidden" name="currentRevisionNumber" value="4">
          <input type="hidden" name="removeItems" value="removeOrder">
          <button  id="emptyCartButton" class="btn tds-btn-lt-blue" type="submit">Empty Cart</button>
      </form>

      <form class="pull-right form-group" name="checkout" action="?" method="POST">
          <input type="hidden" name="currentRevisionNumber" value="?">
          <input type="hidden" name="beginCheckout" value="true">
          <input type="hidden" name="pageId" value="?">
          <button id="beginCheckout" class="gallery-btn btn-green" type="submit" value="$buttonCTA">$buttonCTA</button>
      </form>
  </div>
</div><!--Cart overview action and submission end-->


</div><!--contain closing-->
<div style="height:50px"></div>
