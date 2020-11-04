# OpenapiClient::PaxPaymentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | **String** | Operation result | [optional] 
**resp_message** | **String** | Additional text information of Transaction result. It could be sent by host ,or locally by Payment application. | [optional] 
**auth_code** | **String** | Autorisation Code | [optional] 
**card_brand** | **String** | Card Brand (VISA , MasterCard ...) | [optional] 
**bin** | **String** | Card BIN (first 6 digits of card number) | [optional] 
**host_rc** | **String** | Host response code | [optional] 
**pi_nindicator** | **String** | Information , whether PIN was entered (Values: Y/N) | [optional] 
**signature** | **String** | Information , whether Signature checking is required (Values: Y/N) | [optional] 
**customer_receipt** | **String** | Customer receipt (formatted text) | [optional] 
**merchant_receipt** | **String** | Merchant receipt (formatted text) | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaxPaymentResponse.new(result: 0,
                                 resp_message: null,
                                 auth_code: 581281,
                                 card_brand: Visa Prepaid,
                                 bin: 479608,
                                 host_rc: null,
                                 pi_nindicator: N,
                                 signature: N,
                                 customer_receipt: Customer receipt (formatted text),
                                 merchant_receipt: Merchant receipt (formatted text))
```


