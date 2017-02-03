---
layout: default-cable
title: "CWS-Package Builder Page Layout"
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
	<form method="post" class="pkg-builder-form page-layout">

		<h2>Select Your Services</h2>

		<!-- START Page Layout Contents -->
		<div class="row pkg-builder-page-content">
			<div class="col-sm-8 pkg-products-wrap">
				<div class="product-category-content">
					<div class="category-heading">
						<img class="pkg-category-img" style="background-image: url(/content/dam/tdstelecom/images/products/internet/icon-product-internet.svg);" />
						<h3>H3 Product List Category 1</h3>
					</div>
					<div class="product-list-contents">
						<!-- START Product List 1 Content -->
						<div class="prod-listitem-wrap">
								<div class="prod-listitem-content">
									<h4><a data-toggle="collapse" href="#prodList1">Internet Product List Heading</a></h4>
									<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
								</div>
								<!-- add "in" to .panel-collapse.collapse to start out expanded -->
								<div id="prodList1" class="panel-collapse collapse in">
										<div class="pkg-prod-list-options">
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
								</div>
						</div>
						<!-- END Product List 1 Content -->
					</div>
				</div>

			</div>
			<div class="col-sm-4 pkg-subtotal-wrap">
				<div data-spy="affix" data-offset-top="0">
					Selection Summary
				</div>
			</div>
		</div>
		<!-- END Page Layout Contents -->

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
		$('[data-clampedwidth]').each(function() {
			var elem = $(this);
			var parentPanel = elem.data('clampedwidth');
			var resizeFn = function() {
				var sideBarNavWidth = $(parentPanel).width() - parseInt(elem.css('paddingLeft')) - parseInt(elem.css('paddingRight')) - parseInt(elem.css('marginLeft')) - parseInt(elem.css('marginRight')) - parseInt(elem.css('borderLeftWidth')) - parseInt(
					elem.css('borderRightWidth'));
				elem.css('width', sideBarNavWidth);
			};

			resizeFn();
			$(window).resize(resizeFn);
		});

	});
</script>
