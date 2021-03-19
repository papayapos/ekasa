# EkasaStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | | 100 is default ok response. If warning is present it shows [warning code](EkasaWarning.md), if error is present it shows [error code](EkasaError.md) | [required]
**error** | [**EkasaError**](EkasaError.md) |  | [optional] 
**warning** | [**EkasaWarning**](EkasaWarning.md) |  | [optional] 
**documentToFix** | [**Document**](Document.md) | Shows only if there is document that is broken and needs to be fixed | [optional] 
**locationToFix** | [**Location**](Location.md) | Shows only if there is location that is broken and needs to be fixed | [optional] 


### Common Responses

Code | Message | Detail | Type
------------ | ------------- | ------------- | -------------
100 | "Úspešná odpoveď" |  | SUCCESS
1XX | | | [Common](EkasaError.md#Common)
2XX | | | [Resolvable](EkasaError.md#Resolvable)
3XX | | | [Severe](EkasaError.md#Severe)
-X | | | [Ekasa](EkasaError.md#Ekasa)