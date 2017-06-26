<%@page
import="java.util.Map,
        java.util.Calendar,
        net.tds.hydra.util.CommonUtils,
        net.tds.hydra.util.CONSTANT,
        net.tds.hydra.analytics.AnalyticsUtils,
        org.apache.sling.commons.json.JSONObject,
        org.apache.sling.commons.json.JSONArray,
        net.tds.hydra.errors.ErrorMessagesService,
        net.tds.hydra.cart.ShoppingCart,
        net.tds.hydra.checkout.CheckoutQuestionsService,
        net.tds.hydra.checkout.CheckoutAnswer,
        net.tds.hydra.checkout.CableCheckoutQuestion,
        net.tds.hydra.address.BadAddressException,
        net.tds.hydra.checkout.OrderStatusFlags,
        net.tds.hydra.customer.CustomerProfileSessionManager,
        net.tds.hydra.customer.CustomerProfile,
        net.tds.hydra.util.TDSWebsite" %>

<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0" %>
<%@taglib prefix="cq" uri="http://www.day.com/taglibs/cq/1.0" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:setLocale value="en_US"/>
<cq:defineObjects/>
<sling:defineObjects/>
<%

CheckoutQuestionsService checkoutQuestionsService = sling.getService(CheckoutQuestionsService.class);
CustomerProfileSessionManager customerProfileSessionManager = sling.getService(CustomerProfileSessionManager.class);
CustomerProfile cp = customerProfileSessionManager.getCustomerProfileFromRequest(slingRequest);

ShoppingCart order = null;

try {
    order = checkoutQuestionsService.retrieveOrderDetails(slingRequest, slingResponse);
} catch(BadAddressException b) {
    pageContext.setAttribute("badAddressMessage", CONSTANT.BAD_ADDRESS_MESSAGE);
}

OrderStatusFlags statusFlags = null;
if(order != null) {
    pageContext.setAttribute("orderRevisionNumber", order.getRevisionNumber());
    pageContext.setAttribute("order", order);
    statusFlags = checkoutQuestionsService.getOrderStatusFlags(order);
    // use the status flags to drive what questions to show/rules to enforce
    if (statusFlags != null) {
        pageContext.setAttribute("statusFlags", statusFlags);
    }
    Map<CableCheckoutQuestion, CheckoutAnswer> qAndAs = checkoutQuestionsService.getCableOrderAnswers(order, statusFlags, slingRequest, currentPage);
    //use the Q&As map to fill fields with their values from the order
    for (Map.Entry<CableCheckoutQuestion, CheckoutAnswer> entry : qAndAs.entrySet()) {
        CableCheckoutQuestion question = entry.getKey();
        CheckoutAnswer answer = entry.getValue();
        pageContext.setAttribute(question.toString(), answer.answer);
        pageContext.setAttribute(String.format("%sIsValid", question.toString()), answer.valid);
        pageContext.setAttribute(String.format("%sError", question.toString()), answer.validationMessage);
  }
}
pageContext.setAttribute("US_STATES", CONSTANT.US_STATES);
pageContext.setAttribute("customerProfile", cp);


String rootPage = "";
TDSWebsite site = CommonUtils.getSiteName(currentPage, null);
if(site == TDSWebsite.SHOP_TDS_CABLE) {
    rootPage = "/content/shop.hellotds.html";
} else if(site == TDSWebsite.SHOP_BENDBROADBAND) {
    rootPage = "/content/shop.bendbroadband.html";
}

pageContext.setAttribute("emptyCartMessage", String.format("Your shopping cart is empty. <a href=\"%s\">Shop our site to find product pricing and availability information.</a>", CommonUtils.cleanPath(slingRequest, rootPage)));


  ErrorMessagesService errorMessagesService = sling.getService(ErrorMessagesService.class);
//Construct error messages
Map<String, String> errorMap = errorMessagesService.getErrorMap(slingRequest);
JSONObject errorsJSON = new JSONObject();

errorsJSON.put("firstNameBlank",CommonUtils.getOrDefault(errorMap, "First Name Blank","Please enter your first name."));

errorsJSON.put("firstNameExceedsError",
                CommonUtils.getOrDefault(errorMap, "First Name Exceeds Character Limit","The character limit for your first name is 80 characters."));
errorsJSON.put("lastNameBlank",CommonUtils.getOrDefault(errorMap, "Last Name Blank","Please enter your last name."));

errorsJSON.put("lastnameExceedsError",CommonUtils.getOrDefault(errorMap, "Last Name Exceeds Character Limit","The character limit for your name is 80 characters."));
errorsJSON.put("dayTimeContactPhoneNumber",CommonUtils.getOrDefault(errorMap,"Daytime Contact Phone Number Blank", "Please enter your daytime contact phone number."));

errorsJSON.put("dayTimeContactPhoneNumbeInvalid",CommonUtils.getOrDefault(errorMap,"Daytime Contact Phone Number Not Formatted Correctly", "Please enter your daytime contact phone number in the format: ###-###-####."));
errorsJSON.put("bestTimeOfDayNotSelected",CommonUtils.getOrDefault(errorMap,"Best Time of Day not selected","Please tell us what is the best time of day to reach you."));

errorsJSON.put("contactEmailAddress",CommonUtils.getOrDefault(errorMap, "Contact Email Address Blank","Please enter your contact email address."));
errorsJSON.put("contactEmailAddressInvalid",CommonUtils.getOrDefault(errorMap, "Invalid Email","The email address you entered is invalid."));
errorsJSON.put("contactEmailAddressExceedsError",CommonUtils.getOrDefault(errorMap, "Contact Email Address Exceeds Character Limit","The character limit for the Contact Email Address is 254 characters."));
errorsJSON.put("accountNumberBlank",CommonUtils.getOrDefault(errorMap, "TDS Cable Account Number Blank","Please enter your TDS Cable Account number."));

errorsJSON.put("accountNumberInvalid",CommonUtils.getOrDefault(errorMap, "Invalid TDS Cable Account Number","Please enter a valid TDS Cable Account number."));
errorsJSON.put("billingAddress1Blank",CommonUtils.getOrDefault(errorMap, "Billing Address 1 Blank","Please enter your billing address."));

errorsJSON.put("billingAddress1ExceedsError",CommonUtils.getOrDefault(errorMap, "Billing Address 1 Exceeds Character Limit","The character limit for your billing address is 80 characters."));
errorsJSON.put("billingAddress2ExceedsError",CommonUtils.getOrDefault(errorMap, "Billing Address 2 Exceeds Character Limit","The character limit for your billing address is 80 characters."));


errorsJSON.put("billingCityTown",CommonUtils.getOrDefault(errorMap, "Billing City/Town Blank","Please enter your billing city/town."));

errorsJSON.put("billingCityTownExceedsError",CommonUtils.getOrDefault(errorMap, "Billing City/Town Exceeds Character Limit","The character limit for your billing city/town is 80 characters."));

errorsJSON.put("billingStateError",CommonUtils.getOrDefault(errorMap, "Billing State Not Selected","Please select a billing state."));

errorsJSON.put("billingZip",CommonUtils.getOrDefault(errorMap, "Billing Zip Blank","Please enter your billing zip."));

errorsJSON.put("billingZipExceedsError",CommonUtils.getOrDefault(errorMap, "Billing Zip Exceeds Character Limit","The character limit for your billing zip is 10 characters."));
errorsJSON.put("billingZipMinCharacterError", CommonUtils.getOrDefault(errorMap, "Billing Zip Does Not Meet Minimum Character Requirement", "The entry for billing zip does not meet the minimum requirement of 5 characters."));
errorsJSON.put("billingZipInvalid", CommonUtils.getOrDefault(errorMap, "Billing Zip Invalid Characters", "The billing zip must only contain numbers."));

errorsJSON.put("pinBlank",CommonUtils.getOrDefault(errorMap, "Create a PIN Blank","Please enter the PIN you want to use."));
errorsJSON.put("pibDoesNotMeet",CommonUtils.getOrDefault(errorMap, "PIN Does Not Meet Character Requirement","The character requirement for your PIN is 4 numbers."));

errorsJSON.put("pinExceedsError",CommonUtils.getOrDefault(errorMap, "PIN Exceeds Character Limit","The character limit for your PIN is 4 numbers."));

errorsJSON.put("pinCannotBeSequential",CommonUtils.getOrDefault(errorMap, "PIN Cannot Be Sequential Numbers","Please enter a 4-digit PIN that is not a sequence of numbers (e.g. 1234, 4321)."));
errorsJSON.put("pinCannotBeSame",CommonUtils.getOrDefault(errorMap, "PIN Cannot Be Same Numbers for all 4 digits","Please enter a pin that does not have digits that are all the same number (e.g. 1111)."));

errorsJSON.put("installationDateNotSelected",CommonUtils.getOrDefault(errorMap, "Preferred Installation date is not selected","Please enter a preferred installation date."));
errorsJSON.put("installationSchedulingConsiderationsError",CommonUtils.getOrDefault(errorMap, "Installation Scheduling Considerations Exceeds Character Limit","The character limit for installation scheduling considerations is 250 characters."));



errorsJSON.put("newConstructionAnswerNotSelected",CommonUtils.getOrDefault(errorMap, "New Construction Answer Not Selected","Please tell us whether this address location is newly constructed."));
errorsJSON.put("phoneLineInstalledNotSelected",CommonUtils.getOrDefault(errorMap, "Phone Line Installed Currently Answer Not Selected","Please tell us whether there is a phone line installed at your address."));

errorsJSON.put("nineOneOneLimitationAgree",CommonUtils.getOrDefault(errorMap, "911 Limitation Acknowledgement not selected","Please certify that you understand and acknowledge the 911 Limitation."));

errorsJSON.put("phoneSerivceCurrentNumber",CommonUtils.getOrDefault(errorMap, "Phone Line Installed Currently Answer Not Selected","Please tell us whether there is a phone line installed at your address."));

errorsJSON.put("phoneNumbertoPort",CommonUtils.getOrDefault(errorMap, "Phone Number to Port Blank","Please enter the phone number you want us to port."));
errorsJSON.put("portPhoneNumberNotFormattedCorrectly",CommonUtils.getOrDefault(errorMap, "Port Phone Number Not Formatted Correctly","Please enter the phone number you want us to port in the format: (Enter in format of ##########)"));
errorsJSON.put("portPhoneNumberExceedsCharacterLimit",CommonUtils.getOrDefault(errorMap, "Port Phone Number Exceeds Character Limit","The character limit for your port phone number is 10 characters."));
errorsJSON.put("portPhoneNumberTooShort",CommonUtils.getOrDefault(errorMap, "Port Phone Number Does Not Meet Minimum Character Requirements","The entry for your port phone number does not meet the minimum requirement of 10 characters."));


errorsJSON.put("daytimePortPhoneNumberNotFormatted",CommonUtils.getOrDefault(errorMap, "Daytime Port Phone Number Not Formatted Correctly","Please enter the phone number you want us to port in the format: ##########."));
errorsJSON.put("currentPhoneService",CommonUtils.getOrDefault(errorMap,"Current Phone Service Provider Blank","Please enter your current phone service provider."));
errorsJSON.put("currentPhoneServiceExceeds",CommonUtils.getOrDefault(errorMap,"Current Phone Service Provider Exceeds Character Limit","The character limit for your current phone service provider is 80 characters."));
errorsJSON.put("currentLongDistanceService",CommonUtils.getOrDefault(errorMap, "Current Long Distance Service Provider Blank","Please enter your current long distance service provider."));
errorsJSON.put("currentLongDistanceServiceExceedsError",CommonUtils.getOrDefault(errorMap, "Current Long Distance Service Provider Exceeds Character Limit","The character limit for your current long distance service provider is 80 characters."));

errorsJSON.put("localPhoneServiceagreementNotSelected",CommonUtils.getOrDefault(errorMap, "TDS as local phone service provider agreement not selected","Do you agree to have TDS as your phone service provider?"));
errorsJSON.put("longdistanceServiceNotSelected",CommonUtils.getOrDefault(errorMap, "TDS as long distance service provider agreement not selected","Do you agree to have TDS as your long distance service provider?"));
errorsJSON.put("authorizationAgreementNotAccepted",CommonUtils.getOrDefault(errorMap, "Authorization Agreement not accepted","Please certify that you've read, understand, and agree to the Authorization Agreement."));
errorsJSON.put("dateofBirth",CommonUtils.getOrDefault(errorMap, "Date of Birth Blank","Please enter your date of birth."));


errorsJSON.put("enterYourDateofBirth",CommonUtils.getOrDefault(errorMap, "Date of Birth Blank","Please enter your date of birth."));
errorsJSON.put("dateOfBirthTooYoung",CommonUtils.getOrDefault(errorMap, "Date of Birth Less than 18 years of age","You must be at least 18 years of age to authorize phone service."));


errorsJSON.put("verificationInputNotSelected",CommonUtils.getOrDefault(errorMap, "Verification of Agreement input not selected","Please select either your date of birth or your mother's maiden name."));


errorsJSON.put("mothersMaidenName",CommonUtils.getOrDefault(errorMap, "Mother's maiden name Blank","Please provide your mother's maiden name."));
errorsJSON.put("mothersmaidenNameExceedsError",CommonUtils.getOrDefault(errorMap, "Mother's maiden name Exceeds Character Limit","The character limit for your mother's maiden name is 80 characters."));




String customerInfoHeading = properties.get("customerInfoHeading", "Customer Information");
String emailSubscriptionText = properties.get("emailSubscriptionText", "<p>I would like to receive occasional updates from TDS via email with information about new product features and special offers. Visit our <a href=\"http://hellotds.com/email-subscription\">Email Subscriptions page</a>.</p>");
pageContext.setAttribute("customerInfoHeading", customerInfoHeading);
pageContext.setAttribute("emailSubscriptionText", emailSubscriptionText);



String addressInfoHeading = properties.get("addressInfoHeading", "Address Information");
String paymentInfoCopyText = properties.get("paymentInfoCopyText", "<p>You won't need to provide payment information now. When you receive your first monthly TDS bill, look for information on the many convenient ways to pay, including secure online payment through TDS.</p>");
pageContext.setAttribute("addressInfoHeading", addressInfoHeading);
pageContext.setAttribute("paymentInfoCopyText", paymentInfoCopyText);



String accountSecurityHeading = properties.get("accountSecurityHeading", "Account Security");
String accountPinText = properties.get("accountPinText", "<p>Create an Account PIN: To protect your privacy, you will need to create a personal identification number (PIN) for your TDS account. When calling to speak with a TDS representative, you will be asked for this PIN to verify your identity before discussing personal or sensitive account information. We recommend you select a PIN that cannot be easily guessed by others.</p>");
pageContext.setAttribute("accountSecurityHeading", accountSecurityHeading);
pageContext.setAttribute("accountPinText", accountPinText);



String installationSectionheading = properties.get("installationSectionheading", "Installation");
String accomodationRequestCopy = properties.get("accomodationRequestCopy", "<p>We will do our best to accommodate your request and a TDS Representative will follow up to confirm your date and time.</p>");
String schedulingconsiderationslabelcopy = properties.get("schedulingconsiderationslabelcopy", "Please let us know about any specific scheduling considerations you'd like us to be aware of: (optional)");
String newmodemdeliverycopy = properties.get("newmodemdeliverycopy", "<p>If your order requires delivery of a new modem, it will be shipped to your Service Address.</p>");

pageContext.setAttribute("installationSectionheading", installationSectionheading);
pageContext.setAttribute("accomodationRequestCopy",accomodationRequestCopy);
pageContext.setAttribute("schedulingconsiderationslabelcopy",schedulingconsiderationslabelcopy);
int numDaysToInstall = properties.get("numDaysToInstall", 3);
pageContext.setAttribute("numDaysToInstall", numDaysToInstall);
boolean includeSaturdays = properties.get("includeSaturdays", false);
pageContext.setAttribute("includeSaturdayInstall", includeSaturdays);
pageContext.setAttribute("newmodemdeliverycopy",newmodemdeliverycopy);


String serviceAuthorizationCopy = properties.get("serviceAuthorizationCopy",String.class);
pageContext.setAttribute("serviceAuthorizationCopy",serviceAuthorizationCopy);

Calendar[] disabledInstallDates = properties.get("disabledInstallDates", new Calendar[0]);
JSONArray disabledDatesJSONArray = new JSONArray();
for(Calendar blackoutDate : disabledInstallDates) {
    JSONObject jso = new JSONObject();
    jso.put("year", blackoutDate.get(Calendar.YEAR));
    jso.put("month", blackoutDate.get(Calendar.MONTH));
    jso.put("date", blackoutDate.get(Calendar.DAY_OF_MONTH));
    disabledDatesJSONArray.put(jso);
}
pageContext.setAttribute("blackoutDatesJSON", disabledDatesJSONArray.toString());


String formSubmitButtonCopy = properties.get("formSubmitButtonCopy", "Review Your Order");
pageContext.setAttribute("formSubmitButtonCopy",formSubmitButtonCopy);
pageContext.setAttribute("authorMode", CommonUtils.isAuthorMode(slingRequest));


//Google Analytics stuff
String gaCheckoutStep2 = AnalyticsUtils.createCheckoutObject(order, 2).toString();
pageContext.setAttribute("gaCheckoutStep2", gaCheckoutStep2);

%>

<c:choose>
    <c:when test="${(empty order or order.emptyOrder) and not authorMode}">
        <div class="container tds-alert tds-alert-warning">
            ${emptyCartMessage}
        </div>
    </c:when>
    <c:otherwise>
        <script>
            var gaCheckoutStep2 = ${gaCheckoutStep2};
        </script>
        <div class="container tds-alert tds-alert-critical" style="display: none;">
          <div class="row" >
            <div>Please fix errors before submitting.</div>
            <ul id="errorList" class="errorText"></ul>
          </div>
        </div>
        <form id="cableCheckoutQuestionsForm" action="/bin/shop.hellotds/write/cart/checkoutQuestions" method="POST">
        <input id="revisionNumber" name="revisionNumber" type="hidden" value="${orderRevisionNumber}" />
        <input type="hidden" name="currentPage" value="${currentPage.path}" />
        <!--Customer Information Section-->
        <div class="container">
          <div class="row" >
              <h2 class="hr-after-text">${customerInfoHeading}</h2>
                <c:choose>
                    <c:when test="${statusFlags.forExistingCustomer and not empty order.customerLastName}">
                        <div class="form-group tds-form-group">
                            <label for="fullName">Name:</label>
                            <div id="fullName" class="readOnly">
                                ${fn:escapeXml(order.customerLastName)}
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="form-group tds-form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" class="form-control" name="firstName" id="firstName" value="${fn:escapeXml(firstName)}">
                            <span class="help-block" id="firstName-error" style="display: none;"></span>
                        </div>
                        <div class="form-group tds-form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" class="form-control" name="lastName" id="lastName" value="${fn:escapeXml(lastName)}">
                            <span class="help-block" id="lastName-error" style="display: none;"></span>
                        </div>
                    </c:otherwise>
                </c:choose>

                <div class="form-group tds-form-group">
                    <label for="contactTel">Contact Tel. No.</label>
                    <c:set var="initializedContactTel" value="" />
                    <c:choose>
                        <c:when test="${not empty contactTel}">
                            <c:set var="initializedContactTel" value="${contactTel}" />
                        </c:when>
                        <c:when test="${statusFlags.forExistingCustomer and not empty customerProfile.contactPhoneNumber}">
                            <c:set var="initializedContactTel" value="${customerProfile.contactPhoneNumber}" />
                        </c:when>
                    </c:choose>
                    <input type="text" class="form-control" name="contactTel" id="contactTel" value="${fn:escapeXml(initializedContactTel)}">
                    <span class="help-block">Format:&nbsp;##########</span>
                    <span class="help-block" id="contactTel-error" style="display: none;"></span>
                </div>


                <div class="form-group tds-form-group">
                  <label>Best time of day to reach you?</label>
                    <div class="radio">
                      <label for="contactTime-am">
                        <c:set var="contactTimeChecked" value="" />
                        <c:if test="${contactTime eq 'am'}">
                            <c:set var="contactTimeChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="contactTime" id="contactTime-am" value="am" ${contactTimeChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Morning</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="contactTime-pm">
                        <c:set var="contactTimeChecked" value="" />
                        <c:if test="${contactTime eq 'pm'}">
                            <c:set var="contactTimeChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="contactTime" id="contactTime-pm" value="pm" ${contactTimeChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Afternoon</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="contactTime-anytime">
                        <c:set var="contactTimeChecked" value="" />
                        <c:if test="${contactTime eq 'anytime'}">
                            <c:set var="contactTimeChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="contactTime" id="contactTime-anytime" value="anytime" ${contactTimeChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">All day</span>
                      </label>
                </div>
                <span class="help-block" id="contactTime-error" style="display: none;"></span>
              </div>


                <div class="form-group">
                    <label for="contactEmail">Contact Email Address</label>
                    <c:set var="initializedContactEmail" value="" />
                    <c:choose>
                        <c:when test="${not empty contactEmail}">
                            <c:set var="initializedContactEmail" value="${contactEmail}" />
                        </c:when>
                        <c:when test="${statusFlags.forExistingCustomer and not empty customerProfile.contactEmail}">
                            <c:set var="initializedContactEmail" value="${customerProfile.contactEmail}" />
                        </c:when>
                    </c:choose>
                    <input type="text" class="form-control" name="contactEmail" id="contactEmail" value="${fn:escapeXml(initializedContactEmail)}">
                    <span class="help-block" id="contactEmail-error" style="display: none;"></span>

                    <div class="checkbox">
                      <label for="subscribeToEmail">
                        <c:set var="initializedSubscribeToEmail" value="checked" />
                        <c:if test="${subscribeToEmail eq 'no'}">
                            <c:set var="initializedSubscribeToEmail" value="" />
                        </c:if>
                        <input name="subscribeToEmail" id="subscribeToEmail" type="checkbox" ${initializedSubscribeToEmail}>
                        <span class="tds-radio-btn"></span>
                          <span class="label-text">${emailSubscriptionText}</span>
                      </label>
                    </div>

        </div><!--closing tag for contactEmail form-group-->

        <c:if test="${not empty order.billingAccountNumber or authorMode}">
        <!---current customers only: Cable Account Number read only-->
                      <div class="form-group">
                        <label for="tdsAccountNumber">TDS Cable Account Number:</label>
                          <div id="tdsAccountNumber" class="readOnly">
                            ${order.billingAccountNumber}
                          </div>
                        </div>
        <!---current customers only: Cable Account Number read only end-->
        </c:if>

          </div>
        </div>
        <!--Customer Information Section end-->


        <!--Address Information Section-->

        <div class="container">
          <div class="row" >
                <h2 class="hr-after-text">${addressInfoHeading}</h2>

        <c:if test="${not empty order.serviceAddress or authorMode}">
            <!--Service Address Section-->

            <div id="serviceAddressBlock">
                <c:choose>
                    <c:when test="${not customerProfile.addressDuplicate}">
                        <h3 class="subsectionTitle">Service Address</h3>
                        <label for="customerServiceAddressLineInput">Address:</label>
                        <div id="customerServiceAddressLine"  class="readOnly">
                            ${fn:escapeXml(order.serviceAddress.streetLine1)} ${fn:escapeXml(order.serviceAddress.streetLine2.value)}
                        </div>

                        <input id="customerServiceAddressLineInput" name="customerServiceAddressLine" type="hidden" value="${fn:escapeXml(order.serviceAddress.streetLine1)}">
                        <input id="customerServiceAddressLine2Input" name="customerServiceAddressLine2" type="hidden" value="${fn:escapeXml(order.serviceAddress.streetLine2.value)}">

                        <div>
                            <label for="customerServiceCityInput">City:</label>
                            <div id="customerServiceCity" class="readOnly">
                                ${order.serviceAddress.city}
                            </div>
                            <input id="customerServiceCityInput" name="customerServiceCity" type="hidden" value="${fn:escapeXml(order.serviceAddress.city)}">
                        </div>

                        <label for="customerServiceStateInput">State:</label>
                        <div id="customerServiceState" class="readOnly">
                            ${order.serviceAddress.state}
                        </div>
                        <input id="customerServiceStateInput" name="customerServiceState" type="hidden" value="${fn:escapeXml(order.serviceAddress.state)}">

                        <div>
                            <label for="customerServiceZipInput">Zip Code:</label>
                            <div id="customerServiceZip" class="readOnly">
                                ${order.serviceAddress.zipCode}
                            </div>
                            <input id="customerServiceZipInput" name="customerServiceZip" type="hidden" value="${fn:escapeXml(order.serviceAddress.zipCode)}">
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="container tds-alert tds-alert-warning">
                            If applicable, please add an apartment, unit, floor, etc. number.
                        </div>
                        <div class="form-group">
                            <label for="customerServiceAddressLineInput">Address:</label>
                            <input class="form-control" name="customerServiceAddressLine" id="customerServiceAddressLineInput" type="text" value="${fn:escapeXml(order.serviceAddress.streetLine1)}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="customerServiceAddressLine2Input">Address 2 (optional):</label>
                            <c:if test="${not empty customerServiceAddressLine2}">
                                <c:set var="initializedCustomerServiceAddressLine2" value="${customerServiceAddressLine2}" />
                            </c:if>
                            <input class="form-control" name="customerServiceAddressLine2" id="customerServiceAddressLine2Input" type="text" value="${fn:escapeXml(initializedCustomerServiceAddressLine2)}">
                            <span class="hint-block">Apartment, Unit, Suite, Floor, Building, etc.</span>
                            <span class="help-block" id="customerServiceAddressLine2Error" style="display: none;"></span>
                        </div>

                        <div class="form-group">
                            <label for="customerServiceCityInput">City:</label>
                            <input class="form-control" id="customerServiceCityInput" name="customerServiceCity" type="text" value="${order.serviceAddress.city}" disabled>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="customerServiceStateInput">State:</label>
                                    <input class="form-control" id="customerServiceStateInput" name="customerServiceState" type="text" value="${order.serviceAddress.state}" disabled>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="customerServiceZipInput">Zip Code:</label>
                                    <input class="form-control" id="customerServiceZipInput" name="customerServiceZip" type="number" value="${order.serviceAddress.zipCode}" disabled>
                                </div>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
            <!--Service Address Section end-->
        </c:if>


        <!--Billing Address Section-->
              <div id="billingAddressBlock">
                  <h3 class="subsectionTitle">Billing Address</h3>
                  <div>${paymentInfoCopyText}</div>

                  <c:if test="${not statusFlags.forExistingCustomer}">
                    <div class="checkbox">
                      <label for="useServiceAddressForBilling">
                        <c:set var="initializedUseServiceAddressForBilling" value="" />
                        <c:if test="${useServiceAddressForBilling eq 'yes'}">
                            <c:set var="initializedUseServiceAddressForBilling" value="checked" />
                        </c:if>
                        <input name="useServiceAddressForBilling" id="useServiceAddressForBilling" type="checkbox" ${initializedUseServiceAddressForBilling}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Same as Service Address</span>
                      </label>
                    </div>
                  </c:if>

            <c:set var="billingAddressDisabled" value="" />
            <c:if test="${statusFlags.forExistingCustomer}">
                <c:set var="billingAddressDisabled" value="disabled" />
            </c:if>
            <fieldset ${billingAddressDisabled}>
              <div class="form-group">

                <label for="billingAddressLine">Address: </label>
                <c:set var="initializedBillingAddressLine" value="" />
                <c:choose>
                  <c:when test="${statusFlags.forExistingCustomer}">
                    <c:set var="initializedBillingAddressLine" value="${order.billingAddress.streetLine1}" />
                  </c:when>
                  <c:when test="${not empty billingAddressLine}">
                    <c:set var="initializedBillingAddressLine" value="${billingAddressLine}" />
                  </c:when>
                </c:choose>
                <input class="form-control" name="billingAddressLine" id="billingAddressLine" type="text" value="${fn:escapeXml(initializedBillingAddressLine)}">
                <span class="help-block" id="billingAddressLineError" style="display: none;"></span>

              </div>

              <div class="form-group">

                <label for="billingAddressLineOptional">Address (optional): </label>
                <c:set var="initializedBillingAddressLineOptional" value="" />
                <c:choose>
                  <c:when test="${statusFlags.forExistingCustomer}">
                    <c:set var="initializedBillingAddressLineOptional" value="${order.billingAddress.streetLine2.value}" />
                  </c:when>
                  <c:when test="${not empty billingAddressLineOptional}">
                    <c:set var="initializedBillingAddressLineOptional" value="${billingAddressLineOptional}" />
                  </c:when>
                </c:choose>
                <input class="form-control" name="billingAddressLineOptional" id="billingAddressLineOptional" type="text" value="${fn:escapeXml(initializedBillingAddressLineOptional)}">
                <span class="help-block" id="billingAddressLineOptionalError" style="display: none;"></span>

              </div>

              <div class="form-group">

                <label for="billingCity">City/Town: </label>
                <c:set var="initializedBillingCity" value="" />
                <c:choose>
                  <c:when test="${statusFlags.forExistingCustomer}">
                    <c:set var="initializedBillingCity" value="${order.billingAddress.city}" />
                  </c:when>
                  <c:when test="${not empty billingAddressLineOptional}">
                    <c:set var="initializedBillingCity" value="${billingCity}" />
                  </c:when>
                </c:choose>
                <input class="form-control" name="billingCity" id="billingCity" type="text" value="${fn:escapeXml(initializedBillingCity)}">
                <span class="help-block" id="cityError" style="display: none;"></span>

              </div>

              <div class="form-group">

                <label for="billingState">State: </label>
                <select class="form-control" name="billingState" id="billingState">
                    <option value="">Select</option>
                    <c:set var="initializedBillingState" value="" />
                    <c:choose>
                      <c:when test="${statusFlags.forExistingCustomer}">
                        <c:set var="initializedBillingState" value="${order.billingAddress.state}" />
                      </c:when>
                      <c:when test="${not empty billingAddressLineOptional}">
                        <c:set var="initializedBillingState" value="${billingStateHidden}" />
                      </c:when>
                    </c:choose>
                    <c:forEach var="state" items="${US_STATES}">
                        <c:choose>
                            <c:when test="${state eq initializedBillingState}">
                                <option value="${state}" selected="selected">${state}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${state}">${state}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
                <input type="hidden" name="billingStateHidden" id="billingStateHidden" value="${fn:escapeXml(initializedBillingState)}">
                <span class="help-block" id="billingStateError" style="display: none;"></span>

              </div>

              <div class="form-group">
                <label for="billingZip">Zip: </label>
                <c:set var="initializedBillingZip" value="" />
                <c:choose>
                  <c:when test="${statusFlags.forExistingCustomer}">
                    <c:set var="initializedBillingZip" value="${order.billingAddress.zipCode}" />
                  </c:when>
                  <c:when test="${not empty billingZip}">
                    <c:set var="initializedBillingZip" value="${billingZip}" />
                  </c:when>
                </c:choose>
                <input class="form-control" name="billingZip" id="billingZip" type="text" value="${fn:escapeXml(initializedBillingZip)}">
                <span class="help-block" id="billingZipError" style="display: none;"></span>
              </div>
              </fieldset>
          </div>

        </div>
        </div>
        <!--Address Information Section end-->

        <!--prospects only: Account Security Section -->
        <c:if test="${not statusFlags.forExistingCustomer}">
        <div class="container">
          <div class="row">
                <h2 class="hr-after-text">${accountSecurityHeading}</h2>

                <div>
                  ${accountPinText}
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
                    <input type="text" class="form-control" name="pinNumber" id="pinNumber" value="${fn:escapeXml(pinNumber)}">
                    <span class="help-block" id="pinNumber-error" style="display: none;"></span>
                </div>

          </div>
        </div>
        </c:if>
        <!--prospects only: Account Security Section end-->


        <!--Installation Section-->
        <div class="container">
          <div class="row">
                <h2 class="hr-after-text">${installationSectionheading}</h2>

                <label for="installDate">Please select your preferred installation date.</label>

                <div>${accomodationRequestCopy}</div>

                <div class="form-group">
                    <div class="input-group date" id="installDatePicker">
                        <input type="text" class="form-control" name="installDate" id="installDate" value="${fn:escapeXml(installDate)}"><span class="input-group-addon"></span>
                    </div>
                    <div class="cable-formDisclaimer">Greyed out dates are unavailable</div>
                    <span class="help-block" id="installData-error" style="display: none;"></span>
                </div>

                <div class="form-group">
                    <label for="comments">${schedulingconsiderationslabelcopy}</label>
                    <textarea class="form-control" rows="10" name="comments" id="comments">${fn:escapeXml(comments)}</textarea>
                    <p class="text-muted help-block" id="comments-character-count">Length: 0 | Max. 250</p>
                    <span class="help-block" id="comments-error" style="display: none;"></span>

                </div>

                <c:if test="${statusFlags.forExistingCustomer or authorMode}">
                <div class="form-group tds-form-group">
                  <label>Is the house newly constructed?</label>
                    <div class="radio">
                      <label for="homeNewConstruction-no">
                        <c:set var="homeNewConstructionChecked" value="" />
                        <c:if test="${homeNewConstruction eq 'no'}">
                          <c:set var="homeNewConstructionChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="homeNewConstruction" id="homeNewConstruction-no" value="no" ${homeNewConstructionChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">No</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="homeNewConstruction-yes">
                        <c:set var="homeNewConstructionChecked" value="" />
                        <c:if test="${homeNewConstruction eq 'yes'}">
                          <c:set var="homeNewConstructionChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="homeNewConstruction" id="homeNewConstruction-yes" value="yes" ${homeNewConstructionChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Yes</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="homeNewConstruction-unknown">
                        <c:set var="homeNewConstructionChecked" value="" />
                        <c:if test="${homeNewConstruction eq 'unknown'}">
                          <c:set var="homeNewConstructionChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="homeNewConstruction" id="homeNewConstruction-unknown" value="unknown" ${homeNewConstructionChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">I don't know</span>
                      </label>
                  </div>
                  <span class="help-block" id="homeNewConstruction-error" style="display: none;"></span>
                </div>
                </c:if>
          </div>
        </div>
        <!--Installation Section end-->

        <c:if test="${(statusFlags.hasCallingPlanInCart and (not statusFlags.forExistingCustomer or not statusFlags.hasCallingPlanOnAccount)) or authorMode}">
        <!--Service Authorization< Section-->
        <div class="container">
          <div class="row" >
                <h2 class="hr-after-text">${serviceAuthorizationCopy}</h2>

                <div class="form-group tds-form-group">
                    <label>911 Limitation Acknowledgement</label>
                    <p>We are required by the FCC to provide you with important information about E911 emergency phone services.  It is important to us and to your safety that you understand and agree to certain limitations on your ability to use TDS phone service to reach 911 emergency services.   You will not be able to dial E911 in the event of a power outage, a network outage, or in the unlikely event your broadband connection is unavailable.</p>
                    <div class="checkbox">
                      <label for="nineOneOneLimitationAgree">
                        <c:set var="initialized911LimitationAgree" value="" />
                        <c:if test="${nineOneOneLimitationAgree eq 'yes'}">
                            <c:set var="initialized911LimitationAgree" value="checked" />
                        </c:if>
                        <input name="nineOneOneLimitationAgree" id="nineOneOneLimitationAgree" type="checkbox" ${initialized911LimitationAgree}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">I understand and acknowledge the 911 Limitation.</span>
                      </label>
                      <span class="help-block" id="nineOneOneLimitationAgree-error" style="display: none;"></span>
                    </div>
                </div>

                <div class="form-group tds-form-group">
                  <label>Is there a phone line installed at your Service Address?</label>
                    <div class="radio">
                      <label for="existingPhoneLine-no">
                        <c:set var="existingPhoneLineChecked" value="" />
                        <c:if test="${existingPhoneLine eq 'no'}">
                          <c:set var="existingPhoneLineChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="existingPhoneLine" id="existingPhoneLine-no" value="no" ${existingPhoneLineChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">No</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="existingPhoneLine-yes">
                        <c:set var="existingPhoneLineChecked" value="" />
                        <c:if test="${existingPhoneLine eq 'yes'}">
                          <c:set var="existingPhoneLineChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="existingPhoneLine" id="existingPhoneLine-yes" value="yes" ${existingPhoneLineChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Yes</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="existingPhoneLine-unknown">
                        <c:set var="existingPhoneLineChecked" value="" />
                        <c:if test="${existingPhoneLine eq 'unknown'}">
                          <c:set var="existingPhoneLineChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="existingPhoneLine" id="existingPhoneLine-unknown" value="unknown" ${existingPhoneLineChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">I don't know</span>
                      </label>
                    </div>
                <span class="help-block" id="existingPhoneLine-error" style="display: none;"></span>

              </div>

              <div class="form-group tds-form-group">
                  <label>Would you like us to see if we can use your current phone number as your new TDS phone number? (Restrictions apply).</label>
                    <div class="radio">
                      <label for="phoneSerivceCurrentNumber-noservice">
                        <c:set var="phoneSerivceCurrentNumberChecked" value="" />
                        <c:if test="${phoneSerivceCurrentNumber eq 'noservice'}">
                          <c:set var="phoneSerivceCurrentNumberChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="phoneSerivceCurrentNumber" id="phoneSerivceCurrentNumber-noservice" value="noservice" ${phoneSerivceCurrentNumberChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">I don't have phone service today</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="phoneSerivceCurrentNumber-no">
                        <c:set var="phoneSerivceCurrentNumberChecked" value="" />
                        <c:if test="${phoneSerivceCurrentNumber eq 'no'}">
                          <c:set var="phoneSerivceCurrentNumberChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="phoneSerivceCurrentNumber" id="phoneSerivceCurrentNumber-no" value="no" ${phoneSerivceCurrentNumberChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">No thanks, I'd like a new phone number</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="phoneSerivceCurrentNumber-yes">
                        <c:set var="phoneSerivceCurrentNumberChecked" value="" />
                        <c:if test="${phoneSerivceCurrentNumber eq 'yes'}">
                          <c:set var="phoneSerivceCurrentNumberChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="phoneSerivceCurrentNumber" id="phoneSerivceCurrentNumber-yes" value="yes" ${phoneSerivceCurrentNumberChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Yes, please use my current number</span>
                      </label>
                    </div>
                <span class="help-block" id="phoneSerivceCurrentNumber-error" style="display: none;"></span>

              </div>


        <!--Display if name="existingPhoneLine" is value="yes"-->
                       <div class="form-group tds-form-group" id="portPhoneDiv" style="display:none">

                    <label for="desiredPhoneNumber">Phone Number to Port</label>
                    <input type="text" class="form-control" name="desiredPhoneNumber" id="desiredPhoneNumber" value="${fn:escapeXml(desiredPhoneNumber)}">
                    <span class="help-block">Format:&nbsp;##########</span>
                    <span class="help-block" id="desiredPhoneNumber-error" style="display: none;"></span>
                </div>

                <div class="form-group tds-form-group" id="currentLocalPhoneProviderDiv" style="display:none">
                    <label for="localPhoneProviderName">Who is your current local phone service provider?</label>
                    <input type="text" class="form-control" name="localPhoneProviderName" id="localPhoneProviderName" value="${fn:escapeXml(localPhoneProviderName)}">
                    <span class="help-block" id="localPhoneProviderName-error" style="display: none;"></span>
                </div>

                <div class="form-group tds-form-group" id="currentLongDistancePhoneProviderDiv" style="display:none">
                    <label for="longDistancePhoneProviderName">Who is your current long distance provider?</label>
                    <input type="text" class="form-control" name="longDistancePhoneProviderName" id="longDistancePhoneProviderName" value="${fn:escapeXml(longDistancePhoneProviderName)}">
                    <span class="help-block" id="longDistancePhoneProviderName-error" style="display: none;"></span>
                </div>

                <div class="form-group tds-form-group" id="localPhoneServiceAgreeDiv" style="display:none">
                <div class="checkbox">
                  <label for="localPhoneServiceAgree">
                    <c:set var="initializedLocalPhoneServiceAgree" value="" />
                    <c:if test="${localPhoneServiceAgree eq 'yes'}">
                      <c:set var="initializedLocalPhoneServiceAgree" value="checked" />
                    </c:if>
                    <input name="localPhoneServiceAgree" id="localPhoneServiceAgree" type="checkbox" ${initializedLocalPhoneServiceAgree}>
                    <span class="tds-radio-btn"></span>
                    <span class="label-text">I agree to have TDS as my local phone service provider.</span>
                  </label>
                  <span class="help-block" id="localPhoneServiceAgree-error" style="display: none;"></span>

                </div>

                <div class="checkbox" id="longDistancePhoneServiceAgreeDiv" style="display:none">
                  <label for="longDistancePhoneServiceAgree">
                    <c:set var="initializedLongDistancePhoneServiceAgree" value="" />
                    <c:if test="${longDistancePhoneServiceAgree eq 'yes'}">
                      <c:set var="initializedLongDistancePhoneServiceAgree" value="checked" />
                    </c:if>
                    <input name="longDistancePhoneServiceAgree" id="longDistancePhoneServiceAgree" type="checkbox" ${initializedLongDistancePhoneServiceAgree}>
                    <span class="tds-radio-btn"></span>
                    <span class="label-text">I agree to have TDS as my long distance (in-state, state-to-state, and international) service provider</span>
                  </label>
                  <span class="help-block" id="longDistancePhoneServiceAgree-error" style="display: none;"></span>

                </div>

                <div class="checkbox" id="certifyReadAuthorizationAgreementDiv" style="display:none">
                  <label for="certifyReadAuthorizationAgreement">
                    <c:set var="initializedCertifyReadAuthorizationAgreement" value="" />
                    <c:if test="${certifyReadAuthorizationAgreement eq 'yes'}">
                      <c:set var="initializedCertifyReadAuthorizationAgreement" value="checked" />
                    </c:if>
                    <input name="certifyReadAuthorizationAgreement" id="certifyReadAuthorizationAgreement" type="checkbox" ${initializedCertifyReadAuthorizationAgreement}>
                    <span class="tds-radio-btn"></span>
                    <span class="label-text">I certify that I have read and understand the <a href="#" target="_blank">authorization agreement</a> and that I agree to the terms and conditions contained therein.</span>
                  </label>
                  <span class="help-block" id="certifyReadAuthorizationAgreement-error" style="display: none;"></span>
                </div>
              </div>

                <div class="form-group tds-form-group" id="agreementVerificationTypeDiv" style="display:none">
                  <label>Verification of Agreement</label>
                  <div>Please provide either your date of birth or your mother's maiden name.</div>
                    <div class="radio">
                      <label for="verificationType-birthDate">
                        <c:set var="verificationTypeChecked" value="" />
                        <c:if test="${verificationType eq 'birthDate'}">
                          <c:set var="verificationTypeChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="verificationType" id="verificationType-birthDate" value="birthDate" ${verificationTypeChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Date of Birth</span>
                      </label>
                    </div>
                    <div class="radio">
                      <label for="verificationType-mothersMaidenName">
                        <c:set var="verificationTypeChecked" value="" />
                        <c:if test="${verificationType eq 'mothersMaidenName'}">
                          <c:set var="verificationTypeChecked" value="checked" />
                        </c:if>
                        <input type="radio" name="verificationType" id="verificationType-mothersMaidenName" value="mothersMaidenName" ${verificationTypeChecked}>
                        <span class="tds-radio-btn"></span>
                        <span class="label-text">Mother's Maiden Name</span>
                      </label>
                    </div>
                      <span class="help-block" id="verificationType-error" style="display: none;"></span>

                            <!--Display if name="verificationType" is value="birthDate"-->
                            <div id="birthDateInput" class="initiallyHidden" style="display: none;">
                                <div class="form-group">
                                  <label for="birthDate">Date of Birth</label>
                                  <input class="form-control" name="birthDate" id="birthDate" type="text" value="${fn:escapeXml(birthDate)}">
                                    <span class="help-block">Format: MM/DD/YYYY</span>
                                  <div>Your birth date will be used only to validate the person who authorizes this service
                                    request.</div>
                                  <span class="help-block" id="birthDate-error" style="display: none;"></span>
                                </div>
                              </div>

                              <!--Display if name="verificationType" is value="mothersMaidenName"-->
                              <div id="maidenNameInput" class="initiallyHidden" style="display: none;">
                                <div class="form-group">
                                  <label for="mothersMaidenName">Mother's Maiden Name</label>
                                  <input class="form-control" name="mothersMaidenName" id="mothersMaidenName" type="text" value="${fn:escapeXml(mothersMaidenName)}">
                                  <div>Your mother's maiden name will be used only to validate the person who authorizes this service request.</div>
                                  <span class="help-block" id="mothersMaidenName-error" style="display: none;"></span>
                                </div>
                              </div>

                </div>
                <!--Display if name="existingPhoneLine" is value="yes" END-->

          </div>
        </div>
        <!--Service Authorization Section end-->
        </c:if>

        <div class="container">
          <div class="row">
              <button class="gallery-btn btn-green pull-right" type="submit" value="Submit" id="submitBtn">${formSubmitButtonCopy}</button>
          </div>
        </div>
        </form>

        <script type="text/javascript">
               var errorsJSON = <%=errorsJSON.toString()%>;
               var unavailableInstallDates = ${blackoutDatesJSON};
               var checkoutQuestionsInstallStartDate;
               var unavailableDateTimestamps;
               var numDaysToInstall = ${numDaysToInstall};
               <c:choose>
                   <c:when test="${includeSaturdayInstall}">
                       var excludeDaysOfWeek = [0];
                   </c:when>
                   <c:otherwise>
                       var excludeDaysOfWeek = [0, 6];
                   </c:otherwise>
               </c:choose>
        </script>
    </c:otherwise>
</c:choose>
