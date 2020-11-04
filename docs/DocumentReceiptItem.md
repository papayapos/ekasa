# OpenapiClient::DocumentReceiptItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **String** | External id | [optional] 
**price** | **Float** | Unit price of the item, not the summary! | 
**quantity** | **Float** | Quantity of the item | 
**name** | **String** | Name of the item | 
**reference_document_id** | **String** | Reference id of receipt which this UPDATE or REFUND applies on | [optional] 
**vat_rate** | **String** | VAT rate assigned to the item | 
**item_type** | **String** | Document type | 
**special_regulation** | **String** | Specification of reason for 0% VAT rate (optional) | [optional] 
**seller** | [**Seller**](Seller.md) |  | [optional] 
**voucher_number** | **String** | Number of exchange voucher if itemType is VOUCHER | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DocumentReceiptItem.new(external_id: null,
                                 price: null,
                                 quantity: null,
                                 name: null,
                                 reference_document_id: null,
                                 vat_rate: null,
                                 item_type: null,
                                 special_regulation: null,
                                 seller: null,
                                 voucher_number: null)
```


