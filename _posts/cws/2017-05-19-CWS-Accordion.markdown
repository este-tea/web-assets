---
layout: default-cable
title:  "CWS-Accordion"
date:   2017-05-19
categories: CWS
---

<div class="container tds-accordion">
    <div class="panel-group" id="${accordion#}">
        <!-- START Accordion Panel Item -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title"><a data-parent="#${accordion#}" data-toggle="collapse" href="#${collapse#}">${panelLinkText}</a></h4>
            </div>
            <div class="panel-collapse collapse in" id="${collapse#}">
                <div class="panel-body">
                    <!-- IF customer selects normal -->
                    ${panelContent}
                    <!-- END if customer selects normal -->
                    <!-- IF customer selects list group -->
                    
                    <!-- END if customer selects list group -->
                </div>
            </div>
        </div>
        <!-- END Accordion Panel Item -->
        <!-- START Accordion Panel Item -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title"><a data-parent="#${accordion#}" data-toggle="collapse" href="#${collapse#}">${panelLinkText}</a></h4>
            </div>
            <div class="panel-collapse collapse in" id="${collapse#}">
                <div class="panel-body">
                    <!-- IF customer selects normal -->
                    ${panelContent}
                    <!-- END if customer selects normal -->
                    <!-- IF customer selects list group -->
                    <div class="list-group">
                        <!-- IF customer adds a list group item -->
                        <a class="list-group-item" href="${linkURL}">${linkDisplayText}</a>
                        <!-- END if customer adds a list group item -->
                    </div>
                    <!-- END if customer selects list group -->
                </div>
            </div>
        </div>
        <!-- END Accordion Panel Item -->
    </div>
</div>
