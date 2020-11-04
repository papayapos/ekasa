# OpenapiClient::StoreDocumentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of document | 
**external_id** | **String** | External custom id can be set for later search | [optional] 
**invoice_id** | **String** | Id of invoice. Only required if document type is UF | [optional] 
**amount** | **Float** | Amount of receipt. This is checked against sum of all items | 
**customer** | [**Customer**](Customer.md) |  | [optional] 
**paragon_date** | **DateTime** | If this is parameter is filled, evidence of paragon is going to be sent to eKasa and printed | [optional] 
**document_entries** | [**Array&lt;DocumentReceiptItem&gt;**](DocumentReceiptItem.md) | Items sold on receipt. | [optional] 
**payments** | **Hash&lt;String, Float&gt;** | Payment types and sums used for receipt payment. This parameter sum is NOT! checked against receipt sum. | [optional] 
**header** | **String** | Custom header to print at the top of the receipt | [optional] 
**footer** | **String** | Custom footer to print at the bottom of the receipt | [optional] 
**printer** | [**Printer**](Printer.md) |  | 
**electronic_receipt** | **Boolean** | If client wants electronic receipt, set true. Receipt will not be printed only if is online. For offline receipt will be printed. | [optional] 
**exception** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StoreDocumentRequest.new(type: null,
                                 external_id: null,
                                 invoice_id: null,
                                 amount: null,
                                 customer: null,
                                 paragon_date: null,
                                 document_entries: null,
                                 payments: null,
                                 header: null,
                                 footer: null,
                                 printer: null,
                                 electronic_receipt: null,
                                 exception: null)
```


