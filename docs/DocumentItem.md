# OpenapiClient::DocumentItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **String** | External id | [optional] 
**reference_document_id** | **String** | Reference Id of  | [optional] 
**type** | **String** | Document type | [optional] 
**price** | **Float** | Unit price of the item, not the summary! | [optional] 
**quantity** | **Float** | Quantity of the item | [optional] 
**name** | **String** | Name of the item. Allowed characters [0-9a-zA-Z^!-&amp;()*,-.:;?@|]{1,255} | [optional] 
**total_price** | **Float** | Calculated total price of item with quantity | [optional] 
**vat_rate** | **String** | Vat rate | [optional] 
**seller** | [**Seller**](Seller.md) |  | [optional] 
**special_regulation** | **String** | Special regulation on item if any | [optional] 
**voucher_number** | **String** | Number of voucher | [optional] 
**voucher_ref** | **String** | Applied voucher reference | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DocumentItem.new(external_id: 978020137962,
                                 reference_document_id: 102,
                                 type: null,
                                 price: null,
                                 quantity: null,
                                 name: Tovar 1,
                                 total_price: null,
                                 vat_rate: null,
                                 seller: null,
                                 special_regulation: null,
                                 voucher_number: null,
                                 voucher_ref: null)
```


