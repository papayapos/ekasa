# DocumentItem

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
**seller** | [**Seller**](DocumentItem#Seller.md) |  | [optional] 
**special_regulation** | **String** | Special regulation on item if any | [optional] 
**voucher_number** | **String** | Number of voucher | [optional] 
**voucher_ref** | **String** | Applied voucher reference | [optional] 

## Seller

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Seller id | 
**seller_id_type** | **String** | Seller id type | 