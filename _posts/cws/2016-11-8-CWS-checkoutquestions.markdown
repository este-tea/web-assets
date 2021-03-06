---
layout: default-cable
title:  "CWS-Checkout questions"
date:   2017-3-24
categories: CWS
---

<!--user name or address bar -->
<!--Not part of the componet -->
<div class="tds-error-msg tds-error-info">
  <div class="container" >
  <p>Address: <span class="userGreeting-address"><span class="has-titleCase">${ADDRESS 1} ${ADDRESS 2}, ${CITY}</span>, <span class="has-allCaps">${STATE}</span></span>. <a href="/visitor/address-entry.html?redirectDestination=%2Fshop.html">Edit address</a></p>
  </div>
</div>
<!--Not part of the componet -->
<!--user name or address bar end-->




<!--Warring bar-->
<div class=" tds-alert tds-alert-warning">
  <div class="container" >
    <div>Your shopping cart is empty. <a href="#">Shop our site to find product pricing and availability information.</a></div>
  </div>
</div>
<!--Warring bar end-->

<!--Error bar-->
<div class="tds-alert tds-alert-critical">
  <div class="container" >
    <div>Please fix errors before submitting. <a href="#">(Calls out invalid fields)</a></div>
  </div>
</div>
<!--Error bar end-->


<!--Customer Information Section-->
<div class="container">
  <div class="row" >
        <h2 class="hr-after-text">Customer Information</h2>

        <!--authenticated customer name-->
        <div class="form-group tds-form-group">
          <label for="firstName">Name:</label>
                <div id="fullName" class="readOnly disabled">
                  FirstName LastName
                </div>
        </div>
        <!--authenticated customer name end-->

        <div class="form-group tds-form-group">
            <label for="firstName">First Name</label>
            <input type="text" class="form-control" name="firstName" id="firstName">
            <span class="help-block" id="firstName-error" style="display: none;"></span>
        </div>

        <div class="form-group tds-form-group">
            <label for="lastName">Last Name</label>
            <input type="text" class="form-control" name="lastName" id="lastName">
            <span class="help-block" id="lastName-error" style="display: none;"></span>
        </div>



        <div class="form-group tds-form-group">
            <label for="contactTel">Contact Tel. No.</label>
            <input type="text" class="form-control" name="contactTel" id="contactTel">
            <span class="help-block">Format:&nbsp;##########</span>
            <span class="help-block" id="contactTel-error" style="display: none;"></span>
        </div>


        <div class="form-group tds-form-group">
          <label for="contactTime">Best time of day to reach you?</label>
            <div class="radio">
              <label for="contactTime-am">
                <input type="radio" name="contactTime" id="contactTime-am" value="am">
                <span class="tds-radio-btn"></span>
                <span class="label-text">Morning</span>
              </label>
            </div>
            <div class="radio">
              <label for="contactTime-pm">
                <input type="radio" name="contactTime" id="contactTime-pm" value="pm">
                <span class="tds-radio-btn"></span>
                <span class="label-text">Afternoon</span>
              </label>
            </div>
            <div class="radio">
              <label for="contactTime-anytime">
                <input type="radio" name="contactTime" id="contactTime-anytime" value="anytime">
                <span class="tds-radio-btn"></span>
                <span class="label-text">All day</span>
              </label>
        </div>
        <span class="help-block" id="contactTime-error" style="display: none;"></span>
      </div>


        <div class="form-group">
            <label for="contactEmail">Contact Email Address</label>

<!---prospects only: Show email input and check box for prospects-->
            <input type="text" class="form-control" name="contactEmail" id="contactEmail">
            <span class="help-block" id="contactEmail-error" style="display: none;"></span>

            <div class="checkbox">
              <label for="subscribeToEmail">
                <input name="subscribeToEmail" id="subscribeToEmail" type="checkbox" checked="checked">
                <span class="tds-radio-btn"></span>
                <span class="label-text">I would like to receive occasional updates from TDS via email with information about new product
                features and special offers. Visit our <a href="#" target="_blank"> Email Subscriptions page</a>
              </span>
              </label>
            </div>
<!---prospects only end-->


</div><!--closing tag for contactEmail form-group-->

<!---current customers only: Cable Account Number read only-->
              <div class="form-group">
                <label for="tdsAccountNumber">TDS Cable Account Number:</label>
                  <div id="tdsAccountNumber" class="readOnly">
                    ##############
                  </div>
                </div>
<!---current customers only: Cable Account Number read only end-->

  </div>
</div>
<!--Customer Information Section end-->


<!--Address Information Section-->

<div class="container">
  <div class="row" >
        <h2 class="hr-after-text">Address Information</h2>

<!--Service Address Section-->
<div id="serviceAddressBlock">
        <h3 class="subsectionTitle">Service Address</h3>
        <label for="customerServiceAddressLineInput">Address:</label>
          <div id="customerServiceAddressLine"  class="readOnly">
            104 S MAIN ST
          </div>

          <input id="customerServiceAddressLineInput" name="customerServiceAddressLine" type="hidden" value="104 S MAIN ST">

      <div>
        <label for="customerServiceCityInput">City:</label>
          <div id="customerServiceCity" class="readOnly">
            VERONA
          </div>
          <input id="customerServiceCityInput" name="customerServiceCity" type="hidden" value="VERONA">
      </div>

        <label for="customerServiceStateInput">State:</label>
          <div id="customerServiceState" class="readOnly">
            WI
          </div>
          <input id="customerServiceStateInput" name="customerServiceState" type="hidden" value="WI">

      <div>
        <label for="customerServiceZipInput">Zip Code:</label>
          <div id="customerServiceZip" class="readOnly">
            53593
          </div>
          <input id="customerServiceZipInput" name="customerServiceZip" type="hidden" value="53593">
      </div>

  </div>
<!--Service Address Section end-->


<!--Billing Address Section-->
      <div id="billingAddressBlock">
          <h3 class="subsectionTitle">Billing Address</h3>
          <div>You won’t need to provide payment information now. When you receive your first monthly TDS bill, look for information on the many convenient ways to pay, including secure online payment through TDS.</div>

          <div class="checkbox">
            <label for="useServiceAddressForBilling">
              <input name="useServiceAddressForBilling" id="useServiceAddressForBilling" type="checkbox">
              <span class="tds-radio-btn"></span>
              <span class="label-text">Same as Service Address</span>
            </label>
          </div>
  <fieldset disabled>
      <div class="form-group">

        <label for="billingAddressLine">Address: </label>
        <input class="form-control" name="billingAddressLine" id="billingAddressLine" type="text" value="">
        <span class="help-block" id="billingAddressLineError" style="display: none;"></span>

      </div>

      <div class="form-group">

        <label for="billingAddressLineOptional">Address (optional): </label>
        <input class="form-control" name="billingAddressLineOptional" id="billingAddressLineOptional" type="text" value="">
        <span class="help-block" id="billingAddressLineOptionalError" style="display: none;"></span>

      </div>

      <div class="form-group">

        <label for="billingCity">City/Town: </label>
        <input class="form-control" name="billingCity" id="billingCity" type="text" value="">
        <span class="help-block" id="cityError" style="display: none;"></span>

      </div>

      <div class="form-group">

        <label for="billingState">State: </label>
        <select class="form-control" name="billingState" id="billingState">
            <option value="" disabled="" selected="">Select</option>

            <option value="AK">AK</option>

            <option value="AL">AL</option>

            <option value="AR">AR</option>

            <option value="AZ">AZ</option>

            <option value="CA">CA</option>

            <option value="CO">CO</option>

            <option value="CT">CT</option>

            <option value="DC">DC</option>

            <option value="DE">DE</option>

            <option value="FL">FL</option>

            <option value="GA">GA</option>

            <option value="HI">HI</option>

            <option value="IA">IA</option>

            <option value="ID">ID</option>

            <option value="IL">IL</option>

            <option value="IN">IN</option>

            <option value="KS">KS</option>

            <option value="KY">KY</option>

            <option value="LA">LA</option>

            <option value="MA">MA</option>

            <option value="MD">MD</option>

            <option value="ME">ME</option>

            <option value="MI">MI</option>

            <option value="MN">MN</option>

            <option value="MO">MO</option>

            <option value="MS">MS</option>

            <option value="MT">MT</option>

            <option value="NC">NC</option>

            <option value="ND">ND</option>

            <option value="NE">NE</option>

            <option value="NH">NH</option>

            <option value="NJ">NJ</option>

            <option value="NM">NM</option>

            <option value="NV">NV</option>

            <option value="NY">NY</option>

            <option value="OH">OH</option>

            <option value="OK">OK</option>

            <option value="OR">OR</option>

            <option value="PA">PA</option>

            <option value="RI">RI</option>

            <option value="SC">SC</option>

            <option value="SD">SD</option>

            <option value="TN">TN</option>

            <option value="TX">TX</option>

            <option value="UT">UT</option>

            <option value="VA">VA</option>

            <option value="VT">VT</option>

            <option value="WA">WA</option>

            <option value="WI">WI</option>

            <option value="WV">WV</option>

            <option value="WY">WY</option>
        </select>
        <span class="help-block" id="billingStateError" style="display: none;"></span>

      </div>

      <div class="form-group">
        <label for="billingZip">Zip: </label>
        <input class="form-control" name="billingZip" id="billingZip" type="text" value="">
        <span class="help-block" id="billingZipError" style="display: none;"></span>
      </div>
      </fieldset>
  </div>

</div>
</div>
<!--Address Information Section end-->

<!--prospects only: Account Security Section -->
<div class="container">
  <div class="row">
        <h2 class="hr-after-text">Account Security</h2>

        <div>
          Create an Account PIN: To protect your privacy, you will need to create a personal identification number (PIN) for your TDS account. When calling to speak with a TDS representative, you will be asked for this PIN to verify your identity before discussing personal or sensitive account information. We recommend you select a PIN that cannot be easily guessed by others.
        </div>

        <div>
            PIN Requirements:
            <ul>
              <li>Must have 4 numbers</li>
              <li>Cannot be a numeric sequence (e.g. 1234)</li>
            </ul>
        </div>

        <div class="form-group tds-form-group">
            <label for="pinNumber">Please create your 4-digit numeric PIN</label>
            <input type="text" class="form-control" name="pinNumber" id="pinNumber">
            <span class="help-block" id="pinNumber-error" style="display: none;"></span>
        </div>

  </div>
</div>
<!--prospects only: Account Security Section end-->


<!--Installation Section-->
<div class="container">
  <div class="row">
        <h2 class="hr-after-text">Installation</h2>

        <label for="installData">Please select your preferred installation date.</label>

        <div>We will do our best to accommodate your request and a TDS Representative will follow up to confirm your date and time.</div>

        <div class="form-group">
            <div class="input-group date">
                <input type="text" class="form-control" name="installData" id="installData"><span class="input-group-addon"></span>
            </div>
            <div class="cable-formDisclaimer">Greyed out dates are unavailable</div>
            <span class="help-block" id="installData-error" style="display: none;"></span>
        </div>

        <div class="form-group">
            <label for="comments">Please let us know about any specific scheduling considerations you’d like us to be aware of (optional):</label>
            <textarea class="form-control" rows="10" name="comments" id="comments"></textarea>
            <span class="help-block" id="comments-error" style="display: none;"></span>

        </div>


        <div class="form-group tds-form-group">
          <label for="homeNewConstruction">Is the house newly constructed?</label>
            <div class="radio">
              <label for="homeNewConstruction-no">
                <input type="radio" name="homeNewConstruction" id="homeNewConstruction-no" value="no">
                <span class="tds-radio-btn"></span>
                <span class="label-text">No</span>
              </label>
            </div>
            <div class="radio">
              <label for="homeNewConstruction-yes">
                <input type="radio" name="homeNewConstruction" id="homeNewConstruction-yes" value="yes">
                <span class="tds-radio-btn"></span>
                <span class="label-text">Yes</span>
              </label>
            </div>
            <div class="radio">
              <label for="homeNewConstruction-unknown">
                <input type="radio" name="homeNewConstruction" id="homeNewConstruction-unknown" value="unknown">
                <span class="tds-radio-btn"></span>
                <span class="label-text">I don't know</span>
              </label>
          </div>
          <span class="help-block" id="homeNewConstruction-error" style="display: none;"></span>
        </div>
  </div>
</div>
<!--Installation Section end-->


<!--Service Authorization< Section-->
<div class="container">
  <div class="row" >
        <h2 class="hr-after-text">Service Authorization</h2>

        <div class="form-group tds-form-group">
          <label for="existingPhoneLine">Is there a phone line installed at your Service Address?</label>
            <div class="radio">
              <label for="existingPhoneLine-no">
                <input type="radio" name="existingPhoneLine" id="existingPhoneLine-no" value="no">
                <span class="tds-radio-btn"></span>
                <span class="label-text">No</span>
              </label>
            </div>
            <div class="radio">
              <label for="existingPhoneLine-yes">
                <input type="radio" name="existingPhoneLine" id="existingPhoneLine-yes" value="yes">
                <span class="tds-radio-btn"></span>
                <span class="label-text">Yes</span>
              </label>
            </div>
            <div class="radio">
              <label for="existingPhoneLine-unknown">
                <input type="radio" name="existingPhoneLine" id="existingPhoneLine-unknown" value="unknown">
                <span class="tds-radio-btn"></span>
                <span class="label-text">I don't know</span>
              </label>
            </div>
        <span class="help-block" id="existingPhoneLine-error" style="display: none;"></span>

      </div>


<!--Display if name="existingPhoneLine" is value="yes"-->
        <div class="form-group tds-form-group">
            <label for="desiredPhoneNumber">Phone Number to Port</label>
            <input type="text" class="form-control" name="desiredPhoneNumber" id="desiredPhoneNumber">
            <span class="help-block">Format:&nbsp;##########</span>
            <span class="help-block" id="desiredPhoneNumber-error" style="display: none;"></span>
        </div>

        <div class="form-group tds-form-group">
            <label for="localPhoneProviderName">Who is your current local phone service provider?</label>
            <input type="text" class="form-control" name="localPhoneProviderName" id="localPhoneProviderName">
            <span class="help-block" id="localPhoneProviderName-error" style="display: none;"></span>
        </div>

        <div class="form-group tds-form-group">
            <label for="longDistancePhoneProviderName">Who is your current long distance provider?</label>
            <input type="text" class="form-control" name="longDistancePhoneProviderName" id="longDistancePhoneProviderName">
            <span class="help-block" id="longDistancePhoneProviderName-error" style="display: none;"></span>
        </div>

        <div class="form-group tds-form-group">
        <div class="checkbox">
          <label for="localPhoneServiceAgree">
            <input name="localPhoneServiceAgree" id="localPhoneServiceAgree" type="checkbox">
            <span class="tds-radio-btn"></span>
            <span class="label-text">I agree to have TDS as my local phone service provider.</span>
          </label>
          <span class="help-block" id="localPhoneServiceAgree-error" style="display: none;"></span>

        </div>

        <div class="checkbox">
          <label for="longDistancePhoneServiceAgree">
            <input name="longDistancePhoneServiceAgree" id="longDistancePhoneServiceAgree" type="checkbox">
            <span class="tds-radio-btn"></span>
            <span class="label-text">I agree to have TDS as my long distance (in-state, state-to-state, and international) service provider</span>
          </label>
          <span class="help-block" id="longDistancePhoneServiceAgree-error" style="display: none;"></span>

        </div>

        <div class="checkbox">
          <label for="certifyReadAuthorizationAgreement">
            <input name="certifyReadAuthorizationAgreement" id="certifyReadAuthorizationAgreement" type="checkbox">
            <span class="tds-radio-btn"></span>
            <span class="label-text">I certify that I have read and understand the <a href="#" target="_blank">authorization agreement</a> and that I agree to the terms and conditions contained therein.</span>
          </label>
          <span class="help-block" id="certifyReadAuthorizationAgreement-error" style="display: none;"></span>
        </div>
      </div>

        <div class="form-group tds-form-group">
          <label for="verificationType">Verification of Agreement</label>
          <div>Please provide either your date of birth or your mother's maiden name.</div>
            <div class="radio">
              <label for="verificationType-birthDate">
                <input type="radio" name="verificationType" id="verificationType-birthDate" value="birthDate">
                <span class="tds-radio-btn"></span>
                <span class="label-text">Date of Birth</span>
              </label>
            </div>
            <div class="radio">
              <label for="verificationType-mothersMaidenName">
                <input type="radio" name="verificationType" id="verificationType-mothersMaidenName" value="mothersMaidenName">
                <span class="tds-radio-btn"></span>
                <span class="label-text">Mother's Maiden Name</span>
              </label>
            </div>
              <span class="help-block" id="verificationType-error" style="display: none;"></span>

                    <!--Display if name="verificationType" is value="birthDate"-->
                    <div id="birthDateInput" class="initiallyHidden">
                        <div class="form-group">
                          <label for="birthDate">Date of Birth</label>
                          <input class="form-control" name="birthDate" id="birthDate" type="text" value="">
                            <span class="help-block">Format: MM/DD/YYYY</span>
                          <div>Your birth date will be used only to validate the person who authorizes this service
                            request.</div>
                          <span class="help-block" id="birthDate-error" style="display: none;"></span>

                        </div>
                      </div>

                      <!--Display if name="verificationType" is value="mothersMaidenName"-->
                      <div id="maidenNameInput" class="initiallyHidden">
                        <div class="form-group">
                          <label for="mothersMaidenName">Mother's Maiden Name</label>
                          <input class="form-control" name="mothersMaidenName" id="mothersMaidenName" type="text" value="">
                          <div>Your mother's maiden name will be used only to validate the person who authorizes this service request.</div>
                          <span class="help-block" id="mothersMaidenName-error" style="display: none;"></span>
                        </div>
                      </div>

        </div>
        <!--Display if name="existingPhoneLine" is value="yes" END-->

  </div>
</div>
<!--Service Authorization Section end-->

<div class="container">
  <div class="row">
      <button class="gallery-btn btn-green pull-right" type="submit" value="Submit">Review Your Order</button>
  </div>
</div>


<!--script for bootstrap date picker-->
<script>
$('.input-group.date').datepicker({
    startDate: "+4d",
    daysOfWeekDisabled: "0,6",
    datesDisabled: ['11/24/2016', '12/25/2016', '01/01/2017'],
    orientation: "bottom left",
});
</script>

<div style="height:50px"></div>
