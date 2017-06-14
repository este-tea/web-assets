---
layout: default-cable
title:  "CWS-Accordion"
date:   2017-05-19
categories: CWS
---
<!-- IF customer chooses list group with links -->
<div class="list-group">
    <!-- IF customer adds a list group item -->
    <a class="list-group-item" href="${linkURL}">
      ${linkDisplayText}
      <span class="label label-info pull-right"><span class="glyphicon glyphicon-file"></span> PDF</span>
    </a>
    <!-- END if customer adds a list group item -->
    <!-- IF customer adds a list group item -->
    <a class="list-group-item" href="/residential/support/detail.asp?kb=100043">
      Program your Remote Control
      <span class="label label-warning pull-right"><span class="glyphicon glyphicon-star"></span> Popular</span>
    </a>
    <!-- END if customer adds a list group item -->
    <!-- IF customer adds a list group item -->
    <a class="list-group-item" href="/residential/support/detail.asp?kb=100063">
      Remote Control failures
    </a>
    <!-- END if customer adds a list group item -->
</div>
<!-- END IF customer chooses list group with links -->

<!-- IF customer chooses list group WITHOUT links -->
<ul class="list-group">
    <!-- IF customer adds a list group item -->
    <li class="list-group-item">
      ${linkDisplayText}
    </li>
    <!-- END if customer adds a list group item -->
</ul>
<!-- END IF customer chooses list group WITHOUT links -->
