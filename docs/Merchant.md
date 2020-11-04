# OpenapiClient::Merchant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printer_status** | **String** | Printer status | [optional] 
**id** | **Integer** | Generated ID by PPEKK | [optional] 
**corporate_full_name** | **String** | Corporate name as written in register | [optional] 
**ico** | **String** | Company ID | [optional] 
**dic** | **String** | Company DIC | [optional] 
**ic_dph** | **String** | Vat number of the company. If filled, merchant is automatically taken as Tax payer, otherwise merchant is set as NON! Tax payer | [optional] 
**physical_address** | [**PhysicalAddress**](PhysicalAddress.md) |  | [optional] 
**organization_unit** | [**OrganizationUnit**](OrganizationUnit.md) |  | [optional] 
**security_data** | [**MerchantSecurityData**](MerchantSecurityData.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Merchant.new(status: null,
                                 printer_status: NORMAL,
                                 id: null,
                                 corporate_full_name: TEST,
                                 ico: 99999999,
                                 dic: 1234567890,
                                 ic_dph: SK1234567890,
                                 physical_address: null,
                                 organization_unit: null,
                                 security_data: null)
```


