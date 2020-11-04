# OpenapiClient::PaxTotalsResponseCounter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**record_id** | **String** | Name of the record | [optional] 
**debit_count** | **String** | Number of debit card transactions | [optional] 
**debit_amount** | **String** | Total value of debit card transactions | [optional] 
**credit_count** | **String** | Number of credit card transactions | [optional] 
**credit_amount** | **String** | Total value of credit card transactions | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaxTotalsResponseCounter.new(record_id: VISA,
                                 debit_count: 1,
                                 debit_amount: 1.5,
                                 credit_count: 3,
                                 credit_amount: 25.35)
```


