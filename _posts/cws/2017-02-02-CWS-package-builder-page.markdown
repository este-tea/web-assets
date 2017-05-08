---
layout: default-cable
title: "CWS-Package Builder Page Layout"
date: 2016-12-29
categories: CWS
---
<style>
.affix-top {
  width: 100%;
}

.affix-bottom {
  width: 100%;
  position: absolute;
}
</style>
<div class="tds-error-msg tds-error-info">
  <div class="container">
    <p>Address: <span class="userGreeting-address"><span class="has-titleCase">${ADDRESS 1} ${ADDRESS 2}, ${CITY}</span>, <span class="has-allCaps">${STATE}</span></span>. <a href="/visitor/address-entry.html?redirectDestination=%2Fshop.html">Edit address</a></p>
  </div>
</div>
<div class="container">
  <h1 class="page-header">H1 Package Builder Page Title</h1>
  <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
</div>
<div class="container pkg-builder-container">
  <form method="post" class="pkg-builder-form page-layout">

    <h2>Select Your Services</h2>

    <!-- START Page Layout Contents -->
    <div class="row pkg-builder-page-content">

      <div class="col-sm-8 pkg-products-wrap">

        <!-- START Product Category XX Contents -->
        <div class="product-category-content">
          <div class="category-heading">
            <img class="pkg-category-img" style="background-image: url(/content/dam/tdstelecom/images/products/internet/icon-product-internet.svg);" />
            <h3>Category 1: Internet</h3>
          </div>
          <!-- START Product List Contents -->
          <div class="product-list-contents">
            <!-- START Product List 1 Content -->
            <div class="prod-listitem-wrap">
                <div class="prod-listitem-content">
                  <h4><a data-toggle="collapse" href="#prodList1">Product List Item Heading: Internet Plans</a></h4>
                  <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                <!-- add "in" to .panel-collapse.collapse to start out expanded, remove "in" to start out collapsed -->
                <div id="prodList1" class="panel-collapse collapse in">
                    <div class="pkg-prod-list-options">
                      <div id="" class="tds-alert tds-alert-critical">
                        Error message: A selection from this product list is required.
                      </div>
                      <!-- START Product List 1 Option 1 Card -->
                      <div class="form-group pkg-product-card">
                        <div class="tds-divider-line"></div>
                        <div class="radio pkg-builder-listoption-wrap">
                          <label class="pkg-builder-label" for="cat1-prodlist1-item1">
                            <input id="cat1-prodlist1-item1" class="pkg-builder-radio" type="radio" name="cat1-prodlist1" value="">
                            <span class="tds-radio-btn"></span>
                            <span class="h4 prod-name">Product 1 Display Name: 1Gig Internet</span>
                          </label>
                          <div class="product-content">
                            <p class="prod-description">1Gig Internet Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                          </div>
                          <div class="product-price">
                            <p class="price-text price-base" data-price="">$XX.XX/mo.<span class="term">&nbsp;for 24 months</span></p>
                          </div>
                        </div>
                        <!-- START Product List Addons -->
                        <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
                          <div class="tds-divider-line"></div>
                          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
                          <div class="product-subitem">
                            <!-- START Product List Addon Item -->
                            <div class="form-group">
                              <label class="prod-subitem-label" for="cat1-prodlist1-item1-addon">
                                <input type="checkbox" id="cat1-prodlist1-item1-addon" name="cat1-prodlist1-addon" value="" checked disabled>
                                <span class="tds-radio-btn"></span>
                                <span class="h6 prod-subitem-name">Addon Item 1 Name: Modem</span>
                              </label>
                              <div class="prod-subitem-content">
                                <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                              </div>
                              <div class="product-price">
                                <p class="price-text price-base" data-price="">$XX.XX/mo.<span class="term">&nbsp;for 24 months</span></p>
                              </div>
                            </div>
                            <!-- END Product List Addon Item -->
                          </div>
                        </div>
                        <!-- END Product List Addons -->
                      </div>
                      <!-- END Product List Option 1 Card -->
                      <!-- START Product List Option 2 Card -->
                      <div class="form-group pkg-product-card">
                        <div class="tds-divider-line"></div>
                        <div class="radio pkg-builder-listoption-wrap">
                          <label class="pkg-builder-label" for="cat1-prodlist1-item2">
                            <input id="cat1-prodlist1-item2" class="pkg-builder-radio" type="radio" name="cat1-prodlist1" value="">
                            <span class="tds-radio-btn"></span>
                            <span class="h4 prod-name">Product 2 Display Name</span>
                          </label>
                          <div class="product-content">
                            <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                          </div>
                          <div class="product-price">
                            <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                          </div>
                        </div>
                        <!-- START Product List Addons -->
                        <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
                          <div class="tds-divider-line"></div>
                          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
                          <div class="product-subitem">
                            <!-- START Product List Addon Item -->
                            <div class="form-group">
                              <label class="prod-subitem-label" for="cat1-prodlist1-item2-addon">
                                <input type="checkbox" id="cat1-prodlist1-item2-addon" name="cat1-prodlist-addon" value="" checked disabled>
                                <span class="tds-radio-btn"></span>
                                <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
                              </label>
                              <div class="prod-subitem-content">
                                <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                              </div>
                            </div>
                            <div class="product-price">
                              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                            </div>
                            <!-- END Product List Addon Item -->
                          </div>
                        </div>
                        <!-- END Product List Addons -->
                      </div>
                      <!-- END Product List Option 2 Card -->
                    </div>
                </div>
            </div>
            <!-- END Product List 1 Content -->
          </div>
          <!-- END Product List Contents -->
        </div>
        <!-- END Product Category XX Contents -->

        <!-- START Product Category XX Contents -->
        <div class="product-category-content">
          <div class="category-heading">
            <img class="pkg-category-img" style="background-image: url(/content/dam/tdstelecom/images/products/internet/icon-product-internet.svg);" />
            <h3>Category 2A: TV</h3>
          </div>

          <!-- START Dual Product List Content -->
          <div class="product-list-contents dual-product-list">
            <!-- START Dual Product List Description -->
            <div class="prod-listitem-wrap">
              <div class="prod-listitem-content">
                <h4><a data-toggle="collapse" href="#prodList2a">Are you interested in purchasing CatchTV?</a></h4>
                <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
              </div>
            </div>
            <!-- END Dual Product List Description -->

            <!-- START Dual Product SubList Options -->
            <div id="prodList2a" class="panel-collapse collapse in">
              <div class="pkg-prod-list-options">
              <div id="" class="tds-alert tds-alert-critical">
                Error message: A selection from this product list is required.
              </div>
              <!-- START Dual Product SubList AA -->
              <div class="form-group pkg-product-card">
                <div class="tds-divider-line"></div>
                <div class="radio pkg-builder-listoption-wrap">
                  <label class="pkg-builder-label" for="cat2-dualprod-sublist1">
                    <input id="cat2-dualprod-sublist1" class="pkg-builder-radio" type="radio" name="cat2-dualprod-sublist" value="">
                    <span class="tds-radio-btn"></span>
                    <span class="h4 prod-name">Yes, I want to purchase CatchTV</span>
                  </label>
                  <div class="product-content">
                    <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                  </div>
                </div>
                <!-- START .dual-listoption-wrap -->
                <div class="dual-listoption-wrap">

                  <!-- START .pkg-product-card -->
                  <div class="form-group pkg-product-card">
                    <div class="tds-divider-line"></div>
                    <!-- START Product List aka Product Selection ZZ -->
                    <div class="checkbox pkg-builder-listoption-wrap">
                      <label class="pkg-builder-label" for="cat2-dualprod-sublist-prod1">
                        <input id="cat2-dualprod-sublist-prod1" class="pkg-builder-radio" type="checkbox" name="cat2-dualprod-sublist-prod1" value="" checked disabled>
                        <span class="tds-radio-btn"></span>
                        <span class="h4 prod-name">Product Selection ZZ Display Name: CatchTV</span>
                      </label>
                      <div class="product-content">
                        <p class="prod-description">Optional description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                      </div>
                      <div class="product-price">
                        <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                      </div>
                    </div>
                    <!-- END Product List Item aka Product Selection ZZ -->

                    <!-- START .pkg-builder-addon-wrap -->
                    <div class="checkbox pkg-builder-addon-wrap">
                      <div class="tds-divider-line"></div>
                      <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
                      <div class="product-subitem">
                        <!-- START Product List Addon Item aka Sub Product Selection -->
                        <div class="form-group">
                          <label class="prod-subitem-label" for="cat2-dualprod-sublist-prod1-subprod1">
                            <input type="checkbox" id="cat2-dualprod-sublist-prod1-subprod1" name="cat2-dualprod-sublist-prod1-subprod1" value="" checked disabled>
                            <span class="tds-radio-btn"></span>
                            <span class="h6 prod-subitem-name">Addon Item 1 Name: Monthly DVR Fee</span>
                          </label>
                          <div class="prod-subitem-content">
                            <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                          </div>
                          <div class="product-price">
                            <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                          </div>
                        </div>
                        <!-- END Product List Addon Item aka Sub Product Selection -->

                      </div>
                    </div>
                    <!-- END .pkg-builder-addon-wrap -->

                  </div>
                  <!-- END .pkg-product-card -->

                  <!-- START .pkg-product-card -->
                  <div class="form-group pkg-product-card">
                    <div class="tds-divider-line"></div>
                    <!-- START Product List aka Product Selection ZZ Card -->
                    <div class="checkbox pkg-builder-listoption-wrap">
                      <label class="pkg-builder-label" for="cat2-dualprod-sublist-prod2">
                        <input id="cat2-dualprod-sublist-prod2" class="pkg-builder-radio" type="checkbox" name="cat2-dualprod-sublist-prod2" value="">
                        <span class="tds-radio-btn"></span>
                        <span class="h4 prod-name">Product Selection ZZ Display Name: How many additional TVs would you like to connect?</span>
                      </label>
                      <div class="product-content">
                        <div class="form-sub-group">
                          <label for="HDSTBadd" class="sr-only">Number of HD STBs</label>
                          <input id="HDSTBadd" class="form-control" type="text" value="" name="HDSTBadd">
                        </div>
                      </div>
                      <div class="product-price">
                        <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                      </div>
                    </div>
                    <!-- END Product List Item aka Product Selection ZZ -->
                  </div>
                  <!-- END .pkg-product-card -->

                  <!-- START .pkg-product-card -->
                  <div class="form-group pkg-product-card">
                    <div class="tds-divider-line"></div>
                    <!-- START Product List aka Product Selection ZZ Card -->
                    <div class="checkbox pkg-builder-listoption-wrap">
                      <label class="pkg-builder-label" for="cat2-dualprod-sublist-prod3">
                        <input id="cat2-dualprod-sublist-prod3" class="pkg-builder-radio" type="checkbox" name="cat2-dualprod-sublist-prod3" value="" checked disabled>
                        <span class="tds-radio-btn"></span>
                        <span class="h4 prod-name">Product Selection ZZ Display Name: CatchTV STB Credit</span>
                      </label>
                      <div class="product-content">
                        <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                      </div>
                      <div class="product-price">
                        <p class="price-text price-base" data-price="">$(XX.XX)/mo.</p>
                      </div>
                    </div>
                    <!-- END Product List Item aka Product Selection ZZ -->
                  </div>
                  <!-- END .pkg-product-card -->

                </div>
                <!-- END .dual-listoption-wrap -->
              </div>
              <!-- END Dual Product SubList AA -->

              <!-- START Dual Product SubList AA -->
              <div class="form-group pkg-product-card">
                <div class="tds-divider-line"></div>
                <div class="radio pkg-builder-listoption-wrap">
                  <label class="pkg-builder-label" for="cat2-dualprod-sublist2">
                    <input id="cat2-dualprod-sublist2" class="pkg-builder-radio" type="radio" name="cat2-dualprod-sublist" value="">
                    <span class="tds-radio-btn"></span>
                    <span class="h4 prod-name">No, I don't want to purchase CatchTV</span>
                  </label>
                  <div class="product-content">
                    <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                  </div>
                </div>
                <!-- START .dual-listoption-wrap -->
                <div class="dual-listoption-wrap">

                  <!-- START .pkg-product-card -->
                  <div class="form-group pkg-product-card">
                    <div class="tds-divider-line"></div>
                    <!-- START Product List aka Product Selection ZZ Card -->
                    <div class="checkbox pkg-builder-listoption-wrap">
                      <label class="pkg-builder-label" for="cat2-dualprod-sublist2-prod1">
                        <input id="cat2-dualprod-sublist2-prod1" class="pkg-builder-radio" type="checkbox" name="cat2-dualprod-sublist2-prod1" value="">
                        <span class="tds-radio-btn"></span>
                        <span class="h4 prod-name">HD DVR Display Name</span>
                      </label>
                      <div class="product-content">
                        <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec.</p>
                        <div class="form-sub-group">
                          <label for="HDSTBadd2" class="sr-only">Number of HD STBs</label>
                          <input id="HDSTBadd2" class="form-control" type="text" value="" name="HDSTBadd2">
                        </div>
                      </div>

                      <div class="product-price">
                        <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                      </div>

                      <div id="" class="tds-alert tds-alert-critical">
                        Error message: Maximum selection limit exceeded.
                      </div>

                    </div>
                    <!-- END Product List Item aka Product Selection ZZ -->
                  </div>
                  <!-- END .pkg-product-card -->

                  <!-- START .pkg-product-card -->
                  <div class="form-group pkg-product-card">
                    <div class="tds-divider-line"></div>
                    <!-- START Product List aka Product Selection ZZ Card -->
                    <div class="checkbox pkg-builder-listoption-wrap">
                      <label class="pkg-builder-label" for="cat2-dualprod-sublist2-prod2">
                        <input id="cat2-dualprod-sublist2-prod2" class="pkg-builder-radio" type="checkbox" name="cat2-dualprod-sublist2-prod2" value="">
                        <span class="tds-radio-btn"></span>
                        <span class="h4 prod-name">HD STB Display Name</span>
                      </label>
                      <div class="product-content">
                        <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec.</p>
                        <div class="form-sub-group">
                          <label for="HDSTBadd3" class="sr-only">Number of HD STBs</label>
                          <input id="HDSTBadd3" class="form-control" type="text" value="" name="HDSTBadd3">
                        </div>
                      </div>
                      <div class="product-price">
                        <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                      </div>
                    </div>
                    <!-- END Product List Item aka Product Selection ZZ -->
                  </div>
                  <!-- END .pkg-product-card -->

                  <!-- START .pkg-product-card -->
                  <div class="form-group pkg-product-card">
                    <div class="tds-divider-line"></div>
                    <!-- START Product List aka Product Selection ZZ Card -->
                    <div class="checkbox pkg-builder-listoption-wrap">
                      <label class="pkg-builder-label" for="cat2-dualprod-sublist2-prod3">
                        <input id="cat2-dualprod-sublist2-prod3" class="pkg-builder-radio" type="checkbox" name="cat2-dualprod-sublist2-prod3" value="">
                        <span class="tds-radio-btn"></span>
                        <span class="h4 prod-name">HD DTA Display Name</span>
                      </label>
                      <div class="product-content">
                        <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec.</p>
                        <div class="form-sub-group">
                          <label for="HDSTBadd4" class="sr-only">Number of HD STBs</label>
                          <input id="HDSTBadd4" class="form-control" type="text" value="" name="HDSTBadd4">
                        </div>
                      </div>
                      <div class="product-price">
                        <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                      </div>
                    </div>
                    <!-- END Product List Item aka Product Selection ZZ -->
                  </div>
                  <!-- END .pkg-product-card -->

                  <!-- START .pkg-product-card -->
                  <div class="form-group pkg-product-card">
                    <div class="tds-divider-line"></div>
                    <!-- START Product List aka Product Selection ZZ Card -->
                    <div class="checkbox pkg-builder-listoption-wrap">
                      <label class="pkg-builder-label" for="cat2-dualprod-sublist2-prod4">
                        <input id="cat2-dualprod-sublist2-prod4" class="pkg-builder-radio" type="checkbox" name="cat2-dualprod-sublist2-prod4" value="" checked disabled>
                        <span class="tds-radio-btn"></span>
                        <span class="h4 prod-name">Credit</span>
                      </label>
                      <div class="product-price">
                        <p class="price-text price-base" data-price="">$(XX.XX)/mo.</p>
                      </div>
                    </div>
                    <!-- END Product List Item aka Product Selection ZZ -->
                  </div>
                  <!-- END .pkg-product-card -->

                </div>
                <!-- END .dual-listoption-wrap -->
              </div>
              <!-- END Dual Product SubList AA -->

            </div>
            </div>
            <!-- END Dual Product SubList Options -->

          </div>
          <!-- END Dual Product List Content -->

        </div>
        <!-- END Product Category XX Contents -->

        <!-- START Product Category XX Contents -->
        <div class="product-category-content">
          <div class="category-heading">
            <img class="pkg-category-img" style="background-image: url(/content/dam/tdstelecom/images/products/internet/icon-product-internet.svg);" />
            <h3>Category 2B: TV</h3>
          </div>

          <div class="product-list-contents">
            <!-- START Product List 1 Content -->
            <div class="prod-listitem-wrap">
                <div class="prod-listitem-content">
                  <h4><a data-toggle="collapse" href="#prodList2">Product List Item Heading: TV Packages if user can't get CatchTV</a></h4>
                  <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
                <!-- add "in" to .panel-collapse.collapse to start out expanded, remove "in" to start out collapsed -->
                <div id="prodList2" class="panel-collapse collapse">
                    <div class="pkg-prod-list-options">
                      <div id="" class="tds-alert tds-alert-critical">
                        Error message: A selection from this product list is required.
                      </div>

                      <!-- START Product List 2 Option 1 Card -->
                      <div class="form-group pkg-product-card">
                        <div class="tds-divider-line"></div>
                        <div class="checkbox pkg-builder-listoption-wrap">
                          <label class="pkg-builder-label" for="cat2-prodlist2-item1">
                            <input id="cat2-prodlist2-item1" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist2" value="">
                            <span class="tds-radio-btn"></span>
                            <span class="h4 prod-name">Product 1 Display Name</span>
                          </label>
                          <div class="product-content">
                            <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                            <div class="form-sub-group">
                              <label for="HDSTBadd5" class="sr-only">Number of HD STBs</label>
                              <input id="HDSTBadd5" class="form-control" type="text" value="" name="HDSTBadd5">
                            </div>
                          </div>
                          <div class="product-price">
                            <p class="price-text price-base" data-price="">$XX.XX/mo.<span class="term">&nbsp;for 24 months</span></p>
                          </div>
                        </div>
                      </div>
                      <!-- END Product List 2 Option 1 Card -->
                      <!-- START Product List 2 Option 2 Card -->
                      <div class="form-group pkg-product-card">
                        <div class="tds-divider-line"></div>
                        <div class="checkbox pkg-builder-listoption-wrap">
                          <label class="pkg-builder-label" for="cat2-prodlist2-item2">
                            <input id="cat2-prodlist2-item2" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist2" value="">
                            <span class="tds-radio-btn"></span>
                            <span class="h4 prod-name">Product 2 Display Name</span>
                          </label>
                          <div class="product-content">
                            <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                            <div class="form-sub-group">
                              <label for="HDSTBadd6" class="sr-only">Number of HD STBs</label>
                              <input id="HDSTBadd6" class="form-control" type="text" value="" name="HDSTBadd6">
                            </div>
                          </div>
                          <div class="product-price">
                            <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                          </div>
                        </div>
                      </div>
                      <!-- END Product List Option 1 Card -->

                    </div>
                </div>
            </div>
            <!-- END Product List 1 Content -->
          </div>

        </div>
        <!-- END Product Category XX Contents -->

      </div>

      <div class="col-sm-4 pkg-summary-wrap">
        <!-- START Package Summary Sidebar Content -->
        <div id="pkg-summary-sidebar">
          <div class="pkg-summary-content">
            <h2>Selection Summary</h2>
            <div class="tds-divider-line"></div>
            <table class="table pkg-summary-table">
              <tbody>
                <tr>
                  <td colspan="2" class="category-heading">
                    Product Category: Internet
                  </td>
                </tr>
                <tr>
                  <td class="prod-name">
                    Product Display Name: 1Gig Fiber Internet
                  </td>
                  <td class="product-price">
                    $49.95/mo
                  </td>
                </tr>
                <tr>
                  <td class="prod-name">
                    4-port Wireless V1000H Gateway Modem
                  </td>
                  <td class="product-price">
                    $4.95/mo
                  </td>
                </tr>
                <tr>
                  <td colspan="2" class="category-heading">
                    Product Category: TV
                  </td>
                </tr>
                <tr>
                  <td class="prod-name">
                    Product Display Name: Expanded Plus TV
                  </td>
                  <td class="product-price">
                    $49.95/mo
                  </td>
                </tr>
                <tr>
                  <td class="prod-name">
                    Product Display Name: HD STB <span class="quantity">(Quantity: <strong>3</strong>)</span>
                  </td>
                  <td class="product-price">
                    $4.95/mo
                  </td>
                </tr>
              </tbody>
            </table>
            <div class="tds-divider-line"></div>
            <table class="table pkg-subtotal-table">
                <tbody>
                  <tr>
                    <td class="subtotal-column" id="one-time-costs" style="display: table-cell;">
                      <div class="subtotal-column-content">
                        <p class="sel-head-text">One-time costs</p>
                        <p class="sel-price-text">$49.95</p>
                      </div>
                      <td class="subtotal-column" id="one-time-credits" style="display: table-cell;">
                        <div class="subtotal-column-content">
                          <p class="sel-head-text">One-time credits</p>
                          <p class="sel-price-text">($49.95)</p>
                        </div>
                      </td>
                      <td class="subtotal-column" id="monthly-charges">
                        <div class="subtotal-column-content">
                          <p class="sel-head-text sel-head-text-mth">Monthly Charges</p>
                          <p class="sel-price-text sel-price-text-mth">$221.88</p>
                          <p class="subtotal-fees">Plus Taxes and Fees</p>
                        </div>
                      </td>
                    </td>
                  </tr>
                </tbody>
              </table>
          </div>
          <div class="pkg-submit-wrap">
            <button type="submit" form="" value="Submit" id="addtocart" class="tds-btn">Add to Cart</button>
          </div>
        </div>
        <!-- END Package Summary Sidebar Content -->
      </div>
    </div>
    <!-- END Page Layout Contents -->

  </form>

  <!-- START Package Disclaimer -->
  <div class="row pkg-disclaimer">
    <div class="col-sm-8">
      <p class="disclaimer-heading">DISCLAIMER</p>
      <div class="disclaimer-first">
        <div class="disclaimer-body">
          <p><strong>2-Year Monthly Discount Offer Ends 6/30/17:</strong> valid for residential customers who complete a qualifying TDS bundle with high-speed Internet, phone, and TDS TV. Existing TDS customers must newly add Internet and/or TDS TV; new TDS customers must add Internet and TDS TV. Discount applies to current retail rate for 24 consecutive months. After promotional period, standard rates apply. Offer(s) not available in all areas, subject to change without notice. Certain restrictions apply. If customer terminates any individual service that is part of the bundle discounts are void. Customers who previously took advantage of a TDS TV bundle promotion and those with delinquent accounts are not eligible. Prices do not include federal, state, or local taxes and fees. Other terms and conditions apply - see <a href="http://www.tdstv.com/terms">www.tdstv.com/terms</a>.</p>
        </div>
      </div>
      <div id="disclaimerContent" class="collapse">
        <div class="disclaimer-body">
          <p><strong>TDS TV Equipment:</strong> Connected-Home DVR functionality requires DVR set-top-box and additional wired or wireless set-top-box. Wireless set-top box signal quality/ range may vary depending on interference, obstructions, and home construction. If signal quality/range is not sufficient, a wired set-top box may be required. Only one wireless access point and five wireless set-top boxes allowed per account. Normal fees apply. Equipment provided by TDS must be returned upon termination of service or unreturned equipment charges will apply. Return shipping charges may apply.</p>
        </div>
        <div class="disclaimer-body">
          <p><strong>Free Installation Offer</strong> requires 24-month commitment. If customer cancels TV service prior to the end of the initial term, $50 early term fee applies. Professional standard installation is for up to three set-top boxes and residential gateway. Other wiring, installation, and equipment charges may apply.</p>
        </div>
        <div class="disclaimer-body">
          <p><strong>High-Speed Internet</strong> availability varies and speeds shown may not be available at all service addresses. Certain speeds are only offered in areas served by TDS Fiber. Actual speeds experienced by customers vary and are not guaranteed. Speed ranges shown are expressed as'up to'to represent network capabilities between customer location and the TDS network. Speeds vary due to factors, including: distance from switching locations and external/internal network conditions. Requires a TDS phone line and TDS modem/gateway with a monthly fee. A one-time handling fee may apply. Additional equipment may be required and charges may apply. A $15 service charge will apply to existing customers who switch plans without increasing speed or adding qualifying service. Promotions are for new data customers only.</p>
        </div>
        <div class="disclaimer-body">
          <p><strong>TDS Phone Service</strong> is for residential customers. Caller ID service requires a compatible phone or device. Long distance minutes are domestic for both Inter and IntraLATA. Minutes over the monthly allocation are billed at 10¢/min. Extended local calling minutes over the monthly allocation are billed at applicable rates. Certain services may not be available in all areas. A $7.50 service charge may apply to customers who switch plans after 35 days. One-time phone installation charges may apply for new customers.</p>
        </div>
        <div class="disclaimer-body">
          <p>Unlimited long distance is for residential voice service. Misuse (including auto-dialing, permanent call forwarding, three-way calling, and other non-residential uses) may result in immediate suspension, restriction, or service cancellation.</p>
        </div>
        <div class="disclaimer-body">
          <p>Requires TDS TV bundle. Service may be <a href="http://www.tdstelecom.com/LP/info/battery-backup.html">power dependent</a>. Domestic countries include the U.S., American Samoa, Guam, Northern Mariana Islands, U.S. Virgin Islands, and Puerto Rico.</p>
        </div>
        <div class="disclaimer-body">
          <p>Delinquent accounts may lose service. Certain services not available in all areas. Price may vary by serving area and is subject to change without notice. TDS Telecom®/TDS TV® are registered trademarks of Telephone and Data Systems, Inc. and licensed to TDS Telecommunications Corporation. Copyright © 2017, TDS Telecommunications Corporation, All Rights Reserved.</p>
        </div>
      </div>
      <button class="text-link read-more collapsed" type="button" data-toggle="collapse" data-target="#disclaimerContent">Read more</button>
    </div>
  </div>
  <!-- END Package Disclaimer -->
</div>

<!-- START Modal -->
<div id="" class="loadingOverlay modal pkg-builder-modal">
  <div class="modal-dialog">
    <div class="modal-content tds-modal">
      <div class="modal-body tds-msg-box">
        <div class="row">
          <div class="tds-msg-box">
            <div class="spinner"></div>
            <h2>One moment, please.</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END Modal -->

<script language="javascript">
    $(document).ready(function() {

        var $productCard = $('.pkg-product-card');
        var $productAddOn = $('.pkg-builder-addon-wrap');

        $("input:radio.pkg-builder-radio").change(function() {
            //removes highlight from other cards, adds it to selected card
            $(this).closest($productCard).siblings().removeClass('is-selected');
            $(this).closest($productCard).addClass('is-selected', this.checked);
            //hides addons from other cards, reveals addon on selected card
            $(this).closest($productCard).siblings().find($productAddOn).hide();
            $(this).closest($productCard).children($productAddOn).show();
        });

        $("input:checkbox.pkg-builder-radio").change(function() {
            $(this).closest($productCard).toggleClass('is-selected', this.checked);
            $(this).closest($productCard).children($productAddOn).show();
        });
        //each new number spinner needs to be initiated here
        //each new number spinner needs to be initiated here
        $("input[name='catchSTBadd']").TouchSpin({
            min: 0,
            max: 10,
            initval: 0
        });
        $("input[name='HDSTBadd']").TouchSpin({
            min: 0,
            max: 5,
            initval: 0
        });
        $("input[name='HDSTBadd2']").TouchSpin({
            min: 0,
            max: 5,
            initval: 0
        });
        $("input[name='HDSTBadd3']").TouchSpin({
            min: 0,
            max: 5,
            initval: 0
        });
        $("input[name='HDSTBadd4']").TouchSpin({
            min: 0,
            max: 5,
            initval: 0
        });
        $("input[name='HDSTBadd5']").TouchSpin({
            min: 0,
            max: 5,
            initval: 0
        });
        $("input[name='HDSTBadd6']").TouchSpin({
            min: 0,
            max: 5,
            initval: 0
        });

    });
</script>
