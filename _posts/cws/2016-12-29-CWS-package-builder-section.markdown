---
layout: default-cable
title: "CWS-Package Builder Section"
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
<div class="container pkg-builder-container">
	<form method="post" class="pkg-builder-form section-layout">

		<!-- START Section Navigation -->
		<h2>Select Your Services</h2>
		<div class="pkg-builder-tab-hr"></div>
		<!-- remove has numbers class to show icons-->
		<ul class="nav nav-tabs pkg-builder-nav-tabs has-numbers">
			<li class="active"><a data-toggle="tab" href="#category1"><img class="pkg-category-img" style="background-image: url(/content/dam/tdstelecom/images/products/internet/icon-product-internet.svg);" />Internet</a></li>
			<li><a data-toggle="tab" href="#category2"><img class="pkg-category-img" style="background-image: url(/content/dam/tdstelecom/images/products/tv/icon-product-tv.svg);" />TV</a></li>
			<li><a data-toggle="tab" href="#category3"><img class="pkg-category-img" style="background-image: url(/content/dam/tdstelecom/images/products/phone/icon-product-phone.svg);" />Phone</a></li>
			<li><a data-toggle="tab" href="#category4">Terms</a></li>
		</ul>
		<div class="pkg-builder-tab-hr"></div>
		<!-- END Section Navigation -->

		<!-- START Section/Tab Contents -->
		<div class="tab-content pkg-builder-tab-content">
			<!-- START Product Category 1 Content -->
			<div id="category1" class="tab-pane fade in active">
				<h3>Internet Product List Heading</h3>
				<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>

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
				      <div class="radio pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat1-prodlist1-item1">
				          <input id="cat1-prodlist1-item1" class="pkg-builder-radio" type="radio" name="cat1-prodlist1" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 1 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				        </div>
				      </div>
				      <!-- START Product List Addons -->
				      <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
				        <div class="tds-divider-line thin-lt-blue"></div>
				        <div class="product-subitem">
				          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
									<!-- START Product List Addon Item -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="cat1-prodlist1-item1-addon">
				              <input type="checkbox" id="cat1-prodlist1-item1-addon" name="cat1-prodlist1-addon" value="" checked disabled>
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
										<div class="tds-divider-line dotted-dk-gray"></div>
	                </div>
	                <!-- END Product List Addon Item -->
				        </div>
				      </div>
				      <!-- END Product List Addons -->
				    </div>
				    <!-- END Product List Option 1 Card -->
				    <!-- START Product List Option 2 Card -->
				    <div class="form-group pkg-product-card">
				      <div class="radio pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat1-prodlist1-item2">
				          <input id="cat1-prodlist1-item2" class="pkg-builder-radio" type="radio" name="cat1-prodlist1" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 2 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				        </div>
				      </div>
				      <!-- START Product List Addons -->
				      <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
				        <div class="tds-divider-line thin-lt-blue"></div>
				        <div class="product-subitem">
				          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
									<!-- START Product List Addon Item -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="cat1-prodlist1-item2-addon">
				              <input type="checkbox" id="cat1-prodlist1-item2-addon" name="cat1-prodlist-addon" value="" checked disabled>
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
										<div class="tds-divider-line dotted-dk-gray"></div>
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
				<h3>TV Product List Heading</h3>
				<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
				<!-- START Product List 1 Content -->
				<div class="row product-list-contents">
				  <!-- START Product List 1 Description -->
				  <div class="col-sm-4 pkg-prod-list-summary">
				    <div class="prod-listitem-content">
				      <h3>Are you interested in purchasing CatchTV?</h3>
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
				      <div class="radio pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat2-prodlist1-item1">
				          <input id="cat2-prodlist1-item1" class="pkg-builder-radio" type="radio" name="cat2-prodlist1" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Yes, I want to purchase CatchTV</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				        </div>
				      </div>
				      <!-- START Product List Addons -->
				      <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
				        <div class="tds-divider-line thin-lt-blue"></div>
				        <div class="product-subitem">
				          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
				          <!-- START Product List Addon Item 1 -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="cat2-prodlist1-item1-addon">
				              <input type="checkbox" id="cat2-prodlist1-item1-addon" name="cat2-prodlist1-addon" value="" checked disabled>
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
				            <div class="tds-divider-line dotted-dk-gray"></div>
				          </div>
				          <!-- END Product List Addon Item 1 -->
				          <!-- START Product List Addon Item 2 -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="cat2-prodlist1-item1-addon2">
				              <input type="checkbox" id="cat2-prodlist1-item1-addon2" name="cat2-prodlist1-addon2" value="">
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 2 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <div class="form-sub-group">
				                <label for="catchSTBadd" class="sr-only">Number of CatchTV STBs</label>
				                <input id="catchSTBadd" class="form-control" type="text" value="" name="catchSTBadd">
				              </div>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
				            <div class="tds-divider-line dotted-dk-gray"></div>
				          </div>
				          <!-- END Product List Addon Item 2 -->
				        </div>
				      </div>
				      <!-- END Product List Addons -->
				    </div>
				    <!-- END Product List 1 Option 1 Card -->
				    <!-- START Product List 1 Option 2 Card -->
				    <div class="form-group pkg-product-card">
				      <div class="radio pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat2-prodlist1-item2">
				          <input id="cat2-prodlist1-item2" class="pkg-builder-radio" type="radio" name="cat2-prodlist1" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">No, I don't want to purchase CatchTV</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				        </div>
				      </div>
				      <!-- START Product List Addons -->
				      <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
				        <div class="tds-divider-line thin-lt-blue"></div>
				        <div class="product-subitem">
				          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
				          <!-- START Product List Addon Item 1 -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="cat2-prodlist1-item2-addon">
				              <input type="checkbox" id="cat2-prodlist1-item2-addon" name="cat2-prodlist1-addon" value="">
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <div class="form-sub-group">
				                <label for="HDSTBadd" class="sr-only">Number of HD STBs</label>
				                <input id="HDSTBadd" class="form-control" type="text" value="" name="HDSTBadd">
				              </div>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
				            <div class="tds-alert tds-alert-critical">Error message: Limit selection to 10.</div>
				            <div class="tds-divider-line dotted-dk-gray"></div>
				          </div>
				          <!-- END Product List Addon Item 1 -->
				          <!-- START Product List Addon Item 2 -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="cat2-prodlist1-item2-addon2">
				              <input type="checkbox" id="cat2-prodlist1-item2-addon2" name="cat2-prodlist2-addon2" value="">
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 2 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <div class="form-sub-group">
				                <label for="HDSTBadd" class="sr-only">Number of HD STBs</label>
				                <input id="HDSTBadd" class="form-control" type="text" value="" name="HDSTBadd">
				              </div>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
				            <div class="tds-alert tds-alert-critical">Error message: Limit selection to 10.</div>
				            <div class="tds-divider-line dotted-dk-gray"></div>
				          </div>
				          <!-- END Product List Addon Item 2 -->
				        </div>
				      </div>
				      <!-- END Product List Addons -->
				    </div>
				    <!-- END Product List 1 Option 2 Card -->
				  </div>
				  <!-- END Product List 1 Options -->
				</div>
				<!-- END Product List 1 Content -->
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
				      <div class="checkbox pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat2-prodlist2-item1">
				          <input id="cat2-prodlist2-item1" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist2" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 1 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <div class="form-sub-group">
				            <label for="HDSTBadd" class="sr-only">Number of HD STBs</label>
				            <input id="HDSTBadd" class="form-control" type="text" value="" name="HDSTBadd">
				          </div>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				        </div>
				      </div>
				    </div>
				    <!-- END Product List 2 Option 1 Card -->
				    <!-- START Product List 2 Option 2 Card -->
				    <div class="form-group pkg-product-card">
				      <div class="checkbox pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat2-prodlist2-item2">
				          <input id="cat2-prodlist2-item2" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist2" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 2 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <div class="form-sub-group">
				            <label for="HDSTBadd" class="sr-only">Number of HD STBs</label>
				            <input id="HDSTBadd" class="form-control" type="text" value="" name="HDSTBadd">
				          </div>
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
				      <div class="checkbox pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat2-prodlist3-item1">
				          <input id="cat2-prodlist3-item1" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist3" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 1 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				        </div>
				      </div>
				    </div>
				    <!-- END Product List 3 Option 1 Card -->
				    <!-- START Product List 3 Option 2 Card -->
				    <div class="form-group pkg-product-card">
				      <div class="checkbox pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat2-prodlist3-item2">
				          <input id="cat2-prodlist3-item2" class="pkg-builder-radio" type="checkbox" name="cat2-prodlist3" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 2 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
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
				<h3>Phone Product List Heading</h3>
				<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>

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
				      <div class="radio pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="pkg-prodlist1-item1">
				          <input id="pkg-prodlist1-item1" class="pkg-builder-radio" type="radio" name="cat3-prodlist1" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 1 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				        </div>
				      </div>
				      <!-- START Product List Addons -->
				      <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
				        <div class="tds-divider-line thin-lt-blue"></div>
				        <div class="product-subitem">
				          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
									<!-- START Product List Addon Item -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="pkg-prodlist1-item1-addon">
				              <input type="checkbox" id="cat3-prodlist1-item1-addon" name="cat3-prodlist1-addon" value="" checked disabled>
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
										<div class="tds-divider-line dotted-dk-gray"></div>
	                </div>
	                <!-- END Product List Addon Item -->
				        </div>
				      </div>
				      <!-- END Product List Addons -->
				    </div>
				    <!-- END Product List Option 1 Card -->
				    <!-- START Product List Option 2 Card -->
				    <div class="form-group pkg-product-card">
				      <div class="radio pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat3-prodlist1-item2">
				          <input id="cat3-prodlist1-item2" class="pkg-builder-radio" type="radio" name="cat3-prodlist1" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 2 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				        </div>
				      </div>
				      <!-- START Product List Addons -->
				      <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
				        <div class="tds-divider-line thin-lt-blue"></div>
				        <div class="product-subitem">
				          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
									<!-- START Product List Addon Item -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="pkg-prodlist1-item2-addon">
				              <input type="checkbox" id="cat3-prodlist1-item2-addon" name="cat3-prodlist-addon" value="" checked disabled>
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
										<div class="tds-divider-line dotted-dk-gray"></div>
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
				<h3>Terms Product List Heading</h3>
				<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
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
				      <div class="checkbox pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat4-prodlist1-item1">
				          <input id="cat4-prodlist1-item1" class="pkg-builder-radio" type="checkbox" name="cat4-prodlist1" value="" checked disabled>
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 1 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
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
				      <div class="checkbox pkg-builder-listoption-wrap">
				        <label class="pkg-builder-label" for="cat4-prodlist2-item1">
				          <input id="cat4-prodlist2-item1" class="pkg-builder-radio" type="checkbox" name="cat4-prodlist2" value="">
				          <span class="tds-radio-btn"></span>
				          <span class="h4 prod-name">Product 1 Display Name</span>
				        </label>
				        <div class="product-content">
				          <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				          <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				        </div>
				      </div>
				      <!-- START Product List Addons -->
				      <div class="checkbox pkg-builder-addon-wrap" style="display:none;">
				        <div class="tds-divider-line thin-lt-blue"></div>
				        <div class="product-subitem">
				          <p class="h5 prod-subitem-heading">Optional Addon Heading</p>
									<!-- START Product List Addon Item -->
				          <div class="form-group">
				            <label class="prod-subitem-label" for="cat4-prodlist2-item2-addon">
				              <input type="checkbox" id="cat4-prodlist2-item2-addon" name="cat4-prodlist2-addon" value="" checked disabled>
				              <span class="tds-radio-btn"></span>
				              <span class="h6 prod-subitem-name">Addon Item 1 Name</span>
				            </label>
				            <div class="prod-subitem-content">
				              <p class="prod-description">Description. Epicurei accusamus consequat ut qui, hinc etiam persecuti his ad, fugit suscipit lucilius ex nec. <a href="" target="_blank" aria-label="">More Details.</a></p>
				              <p class="price-text price-base" data-price="">$XX.XX/mo.</p>
				            </div>
										<div class="tds-divider-line dotted-dk-gray"></div>
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
						<a class="gallery-btn btn-green next-arrow" href="">Add to Cart</a>
					</div>
				</div>
				<!-- END Bottom Buttons Content -->
			</div>
			<!-- END Product Category 4 Content -->
		</div>
		<!-- END Section/Tab Content -->

	</form>
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

	});
</script>
