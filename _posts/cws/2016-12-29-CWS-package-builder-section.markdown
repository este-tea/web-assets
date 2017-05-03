---
layout: default-cable
title: "CWS-Package Builder Section Layout"
date: 2016-12-29
categories: CWS
---
<div class="tds-error-msg tds-error-info">
  <div class="container">
    <p>Address: <span class="userGreeting-address"><span class="has-titleCase">${ADDRESS 1} ${ADDRESS 2}, ${CITY}</span>, <span class="has-allCaps">${STATE}</span></span>. <a href="/visitor/address-entry.html?redirectDestination=%2Fshop.html">Edit address</a></p>
  </div>
</div>
<div class="container">
  <h1 class="page-header">H1 Package Builder Page Title</h1>
  <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
</div>
<!-- START .pkg-builder-container -->
<div class="container pkg-builder-container">
  <form method="post" class="pkg-builder-form section-layout">

    <!-- START Section Navigation -->
    <h2>Select Your Services</h2>
    <div class="pkg-builder-tab-hr"></div>
    <!-- remove has numbers class to show icons-->
    <ul class="nav nav-tabs pkg-builder-nav-tabs has-numbers">
      <li class="active"><a data-toggle="tab" href="#category1"><img alt="icon1" class="pkg-category-img" src="/content/dam/tdstelecom/images/products/internet/icon-product-internet.svg" />Internet</a></li>
      <li><a data-toggle="tab" href="#category2"><img alt="icon2" class="pkg-category-img" src="/content/dam/tdstelecom/images/products/tv/icon-product-tv.svg" />TV</a></li>
      <li><a data-toggle="tab" href="#category3"><img alt="icon3" class="pkg-category-img" src="/content/dam/tdstelecom/images/products/phone/icon-product-phone.svg" />Phone</a></li>
      <li><a data-toggle="tab" href="#category4">Terms</a></li>
    </ul>
    <div class="pkg-builder-tab-hr"></div>
    <!-- END Section Navigation -->

    <!-- START Section/Tab Contents -->
    <div class="tab-content pkg-builder-tab-content">
      <!-- START Product Category 1 Content -->
      <div id="category1" class="tab-pane fade in active">

        <!-- START Product List 1 Content -->
        <div class="row product-list-contents">
          <!-- START Product List 1 Description -->
          <div class="col-sm-4 pkg-prod-list-summary">
            <div class="prod-listitem-content">
              <h3>Product List Item Heading: Internet Plans</h3>
              <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
          </div>
          <!-- END Product List 1 Description -->
          <!-- START Product List 1 Options -->
          <div class="col-sm-8 pkg-prod-list-options">
            <div id="" class="tds-alert tds-alert-critical">
              Error message: A selection from this product list Internet Plans is required.
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
          <!-- END Product List 1 Options -->
        </div>
        <!-- END Product List 1 Content -->

        <!-- START Bottom Buttons Content -->
        <div class="bottom-buttons">
          <div class="tds-divider-line thin-lt-gray"></div>
          <div class="btn-right">
            <a class="gallery-btn next-arrow" data-toggle="tab" href="#category2">Continue</a>
          </div>
        </div>
        <!-- END Bottom Buttons Content -->
      </div>
      <!-- END Product Category 1 Content -->
      <!-- START Product Category 2 Content -->
      <div id="category2" class="tab-pane fade">

        <!-- START Dual Product List Content -->
        <div class="row product-list-contents dual-product-list">
          <!-- START Dual Product List Description -->
          <div class="col-sm-4 pkg-prod-list-summary">
            <div class="prod-listitem-content">
              <h3>Are you interested in purchasing CatchTV?</h3>
              <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
          </div>
          <!-- END Dual Product List Description -->

          <!-- START Dual Product SubList Options -->
          <div class="col-sm-8 pkg-prod-list-options">
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
          <!-- END Dual Product SubList Options -->

        </div>
        <!-- END Dual Product List Content -->

        <!-- START Product List 2 Content -->
        <div class="row product-list-contents">
          <!-- START Product List 2 Description -->
          <div class="col-sm-4 pkg-prod-list-summary">
            <div class="prod-listitem-content">
              <h3>Product List Item Heading: User can't get CatchTV</h3>
              <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
          </div>
          <!-- END Product List 2 Description -->
          <!-- START Product List 2 Options -->
          <div class="col-sm-8 pkg-prod-list-options">
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
          <!-- END Product List 1 Options -->
        </div>
        <!-- END Product List 2 Content -->
        <!-- START Product List 3 Content -->
        <div class="row product-list-contents">
          <!-- START Product List 3 Description -->
          <div class="col-sm-4 pkg-prod-list-summary">
            <div class="prod-listitem-content">
              <h3>Product List Item Heading <span>(optional)</span></h3>
              <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
          </div>
          <!-- END Product List 3 Description -->
          <!-- START Product List 3 Options -->
          <div class="col-sm-8 pkg-prod-list-options">
            <!-- START Product List 3 Option 1 Card -->
            <div class="form-group pkg-product-card">
              <div class="tds-divider-line"></div>
              <div class="checkbox pkg-builder-listoption-wrap">
                <label class="pkg-builder-label" for="cat2-prodlist3-item1">
                  <input id="cat2-prodlist3-item1" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist3" value="">
                  <span class="tds-radio-btn"></span>
                  <span class="h4 prod-name">Product 1 Display Name</span>
                </label>
                <div class="product-content">
                  <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                </div>
                <div class="product-price">
                  <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                </div>
              </div>
            </div>
            <!-- END Product List 3 Option 1 Card -->
            <!-- START Product List 3 Option 2 Card -->
            <div class="form-group pkg-product-card">
              <div class="tds-divider-line"></div>
              <div class="checkbox pkg-builder-listoption-wrap">
                <label class="pkg-builder-label" for="cat2-prodlist3-item2">
                  <input id="cat2-prodlist3-item2" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist3" value="">
                  <span class="tds-radio-btn"></span>
                  <span class="h4 prod-name">Product 2 Display Name</span>
                </label>
                <div class="product-content">
                  <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                </div>
                <div class="product-price">
                  <p class="price-text price-base" data-price="">$XX.XX/mo. <span class="term">for 2 years</span></p>
                </div>
              </div>
            </div>
            <!-- END Product List Option 1 Card -->
          </div>
          <!-- END Product List 1 Options -->
        </div>
        <!-- END Product List 3 Content -->


        <!-- START Bottom Buttons Content -->
        <div class="bottom-buttons">
          <div class="tds-divider-line thin-lt-gray"></div>
          <div class="btn-left">
            <a class="gallery-btn back-arrow" href="#category1" data-toggle="tab">Back</a>
          </div>
          <div class="btn-right">
            <a class="gallery-btn next-arrow" href="#category3" data-toggle="tab">Continue</a>
          </div>
        </div>
        <!-- END Bottom Buttons Content -->
      </div>
      <!-- END Product Category 2 Content -->
      <!-- START Product Category 3 Content -->
      <div id="category3" class="tab-pane fade">

        <!-- START Product List 1 Content -->
        <div class="row product-list-contents">
          <!-- START Product List 1 Description -->
          <div class="col-sm-4 pkg-prod-list-summary">
            <div class="prod-listitem-content">
              <h3>Product List Item Heading</h3>
              <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
          </div>
          <!-- END Product List 1 Description -->
          <!-- START Product List 1 Options -->
          <div class="col-sm-8 pkg-prod-list-options">
            <div id="" class="tds-alert tds-alert-critical">
              Error message: A selection from this product list is required.
            </div>
            <!-- START Product List 1 Option 1 Card -->
            <div class="form-group pkg-product-card">
              <div class="tds-divider-line"></div>
              <div class="radio pkg-builder-listoption-wrap">
                <label class="pkg-builder-label" for="pkg-prodlist1-item1">
                  <input id="pkg-prodlist1-item1" class="pkg-builder-radio" type="radio" name="cat3-prodlist1" value="">
                  <span class="tds-radio-btn"></span>
                  <span class="h4 prod-name">Product 1 Display Name</span>
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
                    <label class="prod-subitem-label" for="cat3-prodlist1-item1-addon">
                      <input type="checkbox" id="cat3-prodlist1-item1-addon" name="cat3-prodlist1-item1-addon" value="" checked disabled>
                      <span class="tds-radio-btn"></span>
                      <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
                    </label>
                    <div class="prod-subitem-content">
                      <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                    </div>
                    <div class="product-price">
                      <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
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
                <label class="pkg-builder-label" for="cat3-prodlist1-item2">
                  <input id="cat3-prodlist1-item2" class="pkg-builder-radio" type="radio" name="cat3-prodlist1" value="">
                  <span class="tds-radio-btn"></span>
                  <span class="h4 prod-name">Product 2 Display Name</span>
                </label>
                <div class="product-content">
                  <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
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
                    <label class="prod-subitem-label" for="cat3-prodlist1-item2-addon">
                      <input type="checkbox" id="cat3-prodlist1-item2-addon" name="cat3-prodlist1-item2-addon" value="" checked disabled>
                      <span class="tds-radio-btn"></span>
                      <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
                    </label>
                    <div class="prod-subitem-content">
                      <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                    </div>
                    <div class="product-price">
                      <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                    </div>
                  </div>
                  <!-- END Product List Addon Item -->
                </div>
              </div>
              <!-- END Product List Addons -->
            </div>
            <!-- END Product List Option 2 Card -->
          </div>
          <!-- END Product List 1 Options -->
        </div>
        <!-- END Product List 1 Content -->

        <!-- START Bottom Buttons Content -->
        <div class="bottom-buttons">
          <div class="tds-divider-line thin-lt-gray"></div>
          <div class="btn-left">
            <a class="gallery-btn back-arrow" href="#category2" data-toggle="tab">Back</a>
          </div>
          <div class="btn-right">
            <a class="gallery-btn next-arrow" href="#category4" data-toggle="tab">Continue</a>
          </div>
        </div>
        <!-- END Bottom Buttons Content -->
      </div>
      <!-- END Product Category 3 Content -->
      <!-- START Product Category 4 Content -->
      <div id="category4" class="tab-pane fade">

        <!-- START Product List 1 Content -->
        <div class="row product-list-contents">
          <!-- START Product List 1 Description -->
          <div class="col-sm-4 pkg-prod-list-summary">
            <div class="prod-listitem-content">
              <h3>Product List Item Heading</h3>
              <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
          </div>
          <!-- END Product List 1 Description -->
          <!-- START Product List 1 Options -->
          <div class="col-sm-8 pkg-prod-list-options">
            <!-- START Product List 1 Option 1 Card -->
            <div class="form-group pkg-product-card is-selected">
              <div class="tds-divider-line"></div>
              <div class="checkbox pkg-builder-listoption-wrap">
                <label class="pkg-builder-label" for="cat4-prodlist1-item1">
                  <input id="cat4-prodlist1-item1" class="pkg-builder-radio" type="checkbox" name="cat4-prodlist1" value="" checked disabled>
                  <span class="tds-radio-btn"></span>
                  <span class="h4 prod-name">Product 1 Display Name</span>
                </label>
                <div class="product-content">
                  <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                </div>
                <div class="product-price">
                  <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                </div>
              </div>
            </div>
            <!-- END Product List Option 1 Card -->
          </div>
          <!-- END Product List 1 Options -->
        </div>
        <!-- END Product List 1 Content -->
        <!-- START Product List 2 Content -->
        <div class="row product-list-contents">
          <!-- START Product List 2 Description -->
          <div class="col-sm-4 pkg-prod-list-summary">
            <div class="prod-listitem-content">
              <h3>Product List Item Heading</h3>
              <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
          </div>
          <!-- END Product List 2 Description -->
          <!-- START Product List 2 Options -->
          <div class="col-sm-8 pkg-prod-list-options">
            <!-- START Product List 2 Option 1 Card -->
            <div class="form-group pkg-product-card">
              <div class="tds-divider-line"></div>
              <div class="checkbox pkg-builder-listoption-wrap">
                <label class="pkg-builder-label" for="cat4-prodlist2-item1">
                  <input id="cat4-prodlist2-item1" class="pkg-builder-radio" type="checkbox" name="cat4-prodlist2" value="">
                  <span class="tds-radio-btn"></span>
                  <span class="h4 prod-name">Product 1 Display Name</span>
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
                    <label class="prod-subitem-label" for="cat4-prodlist2-item2-addon">
                      <input type="checkbox" id="cat4-prodlist2-item2-addon" name="cat4-prodlist2-addon" value="" checked disabled>
                      <span class="tds-radio-btn"></span>
                      <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
                    </label>
                    <div class="prod-subitem-content">
                      <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
                    </div>
                    <div class="product-price">
                      <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
                    </div>
                  </div>
                  <!-- END Product List Addon Item -->
                </div>
              </div>
              <!-- END Product List Addons -->
            </div>
            <!-- END Product List Option 1 Card -->
          </div>
          <!-- END Product List 2 Options -->
        </div>
        <!-- END Product List 2 Content -->

        <!-- START Bottom Buttons Content -->
        <div class="bottom-buttons">
          <div class="tds-divider-line thin-lt-gray"></div>
          <div class="btn-left">
            <a class="gallery-btn back-arrow" href="#category3" data-toggle="tab">Back</a>
          </div>
          <div class="btn-right">
            <a id="addtocart" class="gallery-btn btn-green next-arrow" href="">Add to Cart</a>
          </div>
        </div>
        <!-- END Bottom Buttons Content -->
      </div>
      <!-- END Product Category 4 Content -->
    </div>
    <!-- END Section/Tab Content -->

  </form>
</div>
<!-- END .pkg-builder-container -->

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

{% include pkg-builder-subtotal.html %}

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
