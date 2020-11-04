# OpenapiClient::PaxPaymentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operation** | **String** | Operation identifier. CP for payment, CC for cancel, CR for refund | [optional] 
**amount** | **String** | Amount, as a string, with a . as a decimal separator | [optional] 
**transaction_id** | **String** | ID of the transaction, for the terminal | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaxPaymentRequest.new(operation: CP,
                                 amount: 1.5,
                                 transaction_id: 28f3af59-52af-42a6-a217-fc26278482db)
```


