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
		<ul class="nav nav-tabs pkg-builder-nav-tabs">
			<li class="active"><a class="pkg-builder-internet-tab" data-toggle="tab" href="#category1">Internet</a></li>
			<li><a class="pkg-builder-tv-tab" data-toggle="tab" href="#category2">TV</a></li>
			<li><a class="pkg-builder-phone-tab" data-toggle="tab" href="#category3">Phone</a></li>
			<li><a class="pkg-builder-extra-tab" data-toggle="tab" href="#category4">Terms</a></li>
		</ul>
		<div class="pkg-builder-tab-hr"></div>
		<!-- END Section Navigation -->
		<!-- START Section Content -->
		<div class="tab-content pkg-builder-tab-content">
			<!-- START Category 1 Content -->
			<div id="category1" class="tab-pane fade in active">
				<!-- START Product Type 1 Content -->
				<div class="col-sm-4 pkg-prod-list-summary">
					<div class="row">
						<div class="prod-listitem-content">
							<h3>High-Speed Internet</h3>
							<p>Please select a High-Speed Internet Plan.</p>
							<p>Upon your selection, a TDS wireless gateway/modem will be added for $4.95/mo.</p>
						</div>
					</div>
				</div>
				<div class="col-sm-8 pkg-prod-list-options">
					<div class="row">
						<!-- START Product Type 1 Options -->
						<div id="{{pkg-product-#}}" class="product-list-items">
							<!-- START Product Type Option 1 Card -->
							<div class="form-group pkg-product-card">
								<div class="radio pkg-builder-radio-wrap">
									<label class="pkg-builder-label" for="pkg-product-item1">
										<input id="pkg-product-item1" class="pkg-builder-radio" type="radio" name="pkg-product1" value="">
										<span class="tds-radio-btn"></span>
										<div class="product-content">
											<h4 class="prod-name">1Gig Fiber Internet</h4>
											<p class="prod-description">Max Download: 1Gbps; Max Upload: 400Mbps. Includes free unlimited Remote PC Support. <a href="/shop/internet-services/high-speed-internet-plans/1-gig-1gbps-fiber-internet.html" target="_blank">More Details.</a></p>
											<p class="price-text price-base" data-price="">$XX.XX/mo.</p>
										</div>
									</label>
								</div>
							  <div class="checkbox pkg-builder-check-wrap" style="display:none;">
									<div class="tds-divider-line dotted-dk-gray"></div>
									<div class="product-subitem">
										<h5 class="prod-subitem-heading">Required Internet Equipment</h5>
								    <label class="prod-subitem-label">
								      <input name="subscribeToEmail" type="checkbox" checked disabled>
								      <span class="tds-radio-btn"></span>
								      <div class="prod-subitem-content">
												<p class="prod-subitem-name">T2200H IPTV Wireless Gateway</p>
												<p class="price-text price-base" data-price="">$X.XX/mo.</p>
											</div>
								    </label>
									</div>
							  </div>
							</div>
							<!-- END Product Type Option 1 Card -->
							<!-- START Product Type Option 2 Card -->
							<div class="form-group pkg-product-card">
								<div class="radio pkg-builder-radio-wrap">
									<label class="pkg-builder-label" for="pkg-product-item2">
										<input id="pkg-product-item2" class="pkg-builder-radio" type="radio" name="pkg-product1" value="">
										<span class="tds-radio-btn"></span>
										<div class="product-content">
											<h4 class="prod-name">Extreme300 Fiber Internet</h4>
											<p class="prod-description">Max Download: 300Mbps; Max Upload: 120Mbps.  Includes free unlimited Remote PC Support. <a href="/shop/internet-services/high-speed-internet-plans/extreme-300mbps-fiber-internet.html" target="_blank">More Details.</a></p>
											<p class="price-text price-base" data-price="$75.00/mo.">$75.00/mo.</p>
										</div>
									</label>
								</div>
								<div class="checkbox pkg-builder-check-wrap" style="display:none;">
									<div class="tds-divider-line dotted-dk-gray"></div>
									<div class="product-subitem">
										<h5 class="prod-subitem-heading">Required Internet Equipment</h5>
								    <label>
								      <input name="subscribeToEmail" type="checkbox" checked disabled>
								      <span class="tds-radio-btn"></span>
								      <div class="prod-subitem-content">
												<p class="prod-subitem-name">Modem Name</p>
												<p class="price-text price-base" data-price="$99.95/mo.">$4.95/mo.</p>
											</div>
								    </label>
									</div>
							  </div>
							</div>
							<!-- END Product Type Option 2 Card -->
							<!-- START Product Type Option 3 Card -->
							<div class="form-group pkg-product-card">
								<div class="radio pkg-builder-radio-wrap">
									<label class="pkg-builder-label" for="pkg-product-item3">
										<input id="pkg-product-item3" class="pkg-builder-radio" type="radio" name="pkg-product1" value="">
										<span class="tds-radio-btn"></span>
										<div class="product-content">
											<h4 class="prod-name">Extreme100 Fiber Internet</h4>
											<p class="prod-description">Max Download: 300Mbps; Max Upload: 120Mbps.  Includes free unlimited Remote PC Support. <a href="/shop/internet-services/high-speed-internet-plans/extreme-300mbps-fiber-internet.html" target="_blank">More Details.</a></p>
											<p class="price-text price-base" data-price="$75.00/mo.">$65.00/mo.</p>
										</div>
									</label>
								</div>
								<div class="checkbox pkg-builder-check-wrap" style="display:none;">
									<div class="tds-divider-line dotted-dk-gray"></div>
									<div class="product-subitem">
										<h5 class="prod-subitem-heading">Required Internet Equipment</h5>
								    <label>
								      <input name="subscribeToEmail" type="checkbox" checked disabled>
								      <span class="tds-radio-btn"></span>
								      <div class="prod-subitem-content">
												<p class="prod-subitem-name">Modem Name</p>
												<p class="price-text price-base" data-price="$99.95/mo.">$4.95/mo.</p>
											</div>
								    </label>
									</div>
							  </div>
							</div>
						</div>
						<!-- END Product Type Option 3 Card -->
					</div>
				</div>
				<!-- END Product Type 1 Options -->

				<div class="bottom-buttons">
					<div class="tds-divider-line thin-lt-gray"></div>
					<div class="btn-right">
						<a class="gallery-btn next-arrow" data-toggle="tab" href="#category2">Continue</a>
					</div>
				</div>
			</div>
			<!-- END Category 1 Content -->
			<!-- START Category 2 Content -->
			<div id="category2" class="tab-pane fade">
				<h3>TV Services</h3>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				<div class="bottom-buttons">
					<div class="tds-divider-line thin-lt-gray"></div>
					<div class="btn-left">
						<a class="gallery-btn back-arrow" href="#category1" data-toggle="tab">Back</a>
					</div>
					<div class="btn-right">
						<a class="gallery-btn next-arrow" href="#category3" data-toggle="tab">Continue</a>
					</div>
				</div>
			</div>
			<!-- END Category 2 Content -->
			<!-- START Category 3 Content -->
			<div id="category3" class="tab-pane fade">
				<h3>Phone Services</h3>
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
				<div class="bottom-buttons">
					<div class="tds-divider-line thin-lt-gray"></div>
					<div class="btn-left">
						<a class="gallery-btn back-arrow" href="#category2" data-toggle="tab">Back</a>
					</div>
					<div class="btn-right">
						<a class="gallery-btn next-arrow" href="#category4" data-toggle="tab">Continue</a>
					</div>
				</div>
			</div>
			<!-- END Category 3 Content -->
			<!-- START Category 4 Content -->
			<div id="category4" class="tab-pane fade">
				<h3>Service/Terms/Promo</h3>
				<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
				<div class="bottom-buttons">
					<div class="tds-divider-line thin-lt-gray"></div>
					<div class="btn-left">
						<a class="gallery-btn back-arrow" href="#category3" data-toggle="tab">Back</a>
					</div>
					<div class="btn-right">
						<a class="gallery-btn btn-green next-arrow" href="">Add to Cart</a>
					</div>
				</div>
			</div>
			<!-- END Category 4 Content -->
		</div>
		<!-- END Section Content -->
	</form>
</div>
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
{% include pkg-builder-subtotal.html %}
<script language="javascript">
	$(document).ready(function() {
		var $productCard = $('.pkg-product-card');
		var $productAddOn = $('.pkg-builder-check-wrap');

		$("input.pkg-builder-radio").change(function() {
			$(this).closest($productCard).siblings().removeClass('is-selected');
			$(this).closest($productCard).addClass('is-selected', this.checked);

			$(this).closest($productCard).siblings().find($productAddOn).hide();
			$(this).closest($productCard).children($productAddOn).show();
		});
	});
</script>
