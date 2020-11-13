# MerchantApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get Merchant**](MerchantApiGet.md#GetMerchant) | **POST** /api/merchant/get | Get merchant
[**Store Merchant**](MerchantApiStore.md#StoreMerchant) | **POST** /api/merchant/store | Store merchant

## StoreMerchant

> Store merchant

Store new merchant. Up to 20.

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/merchant/store' \
--data-raw '{
	"identificationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<eu:IdentityData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n\t<eu:Dic>1234567890</eu:Dic>\n\t<eu:Ico>99999999</eu:Ico>\n\t<eu:IcDph>SK9999999999</eu:IcDph>\n\t<eu:CorporateBodyFullName>O.C.a.F.A. PORTABLE_ICDPH</eu:CorporateBodyFullName>\n\t<eu:OrganizationUnit>\n\t\t<eu:OrganizationUnitName>nepovinný názov predajne</eu:OrganizationUnitName>\n\t\t<eu:CashRegisterCode>88812345678900001</eu:CashRegisterCode>\n\t\t<eu:CashRegisterType>PORTABLE</eu:CashRegisterType>\n\t</eu:OrganizationUnit>\n\t<eu:PhysicalAddress>\n\t\t<eu:Country>Slovenská republika</eu:Country>\n\t\t<eu:Municipality>Bratislava</eu:Municipality>\n\t\t<eu:StreetName>Miletičova</eu:StreetName>\n\t\t<eu:BuildingNumber>4</eu:BuildingNumber>\n\t\t<eu:PropertyRegistrationNumber>22</eu:PropertyRegistrationNumber>\n\t\t<eu:DeliveryAddress>\n\t\t\t<eu:PostalCode>99999</eu:PostalCode>\n\t\t</eu:DeliveryAddress>\n\t</eu:PhysicalAddress>\n</eu:IdentityData>",
	"authenticationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<eu:AuthData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n    <eu:KeyStoreType>PKCS12</eu:KeyStoreType>\n    <eu:Data>MIITbgIBAzCCEygGCSqGSIb3DQEHAaCCExkEghMVMIITETCCBX4GCSqGSIb3DQEHAaCCBW8EggVrMIIFZzCCBWMGCyqGSIb3DQEMCgECoIIE+jCCBPYwKAYKKoZIhvcNAQwBAzAaBBR/MBZglKl5XQe7ZLoFhUEhUvMypgICBAAEggTITioyYrL8z+fZRZdQqW7v2jc/Pro8IaNclc+fzdRiHN6SWsecHT2FLtKYoAbgbPe0KakEYfj7LxloBGMUgVx7gaHghwxVkf2pwIdWgORQ5M3UMqeeMCFzV6dHOMUvoEnhejNPoUFxk/MV/RwF3V/omrYEQN5jAU/7LWWn9xvI9ANPvSRYuP6lsSUPNPsvqub0QcedbsKlxezBkAiFCBi+aAhXebmp76g1boE5ilYC6liD5bR0CeYq557Vp/2tWV9hXMTXvFDN2f24h08oNFSHus5mYWmKM5ZeOiCfzdAy9ARKzGC1sw+giYymUkgmfHwOc23XJHBn/Vk9m74J0TjE4RvbaSEV9SZBjdAwBEVzkUt8B/Q7AWwIz2fEX+yKVtByy0L4uNe29bxQ+XXw8boldoRo3PgRKgohZJuRraGMdRDGnCWUZzbJmdjrPghIJgP4qOMb7oAhHe+IkmbUjl6LrbRTYPWSiGXrazdFGr46ECvkLK3/hslfnMhVpLHHvzEQbHrkHevnpPTZJsExEwkqf3H7mE6HgqqElU5sHrrBDV/+Ef+4DeEH7RqdP9EV9Wy3mI7DO7kAg+p8hjE8DmG4vgXwhACdVn6ZVok9Zmhj4r01XqR9X7iO7MWSF8/aXJKM+DMnz4zPTBU4HJWrpiHC4wNvR94qZJhO9sObM1yyo5sRRCmDePpLmp6ndxoyOjt5TqOuuNRBRmGiNOiipGtckoV8FZXeZFu9isYiQA9U8ObI/+PJQ7oYoj6MkItC5hffOJJ2hg+X9JMeM/cRluoo3rWfGmmUKlVFQrmMrn4X9P70CvZkWIcSMcMenJqY/YIc+1uTSCbxCguCCIhw0MV8N6s6luGG/uXilY0fdtS58NkSYqsF2gJxP8AyGl7ylTWRO5uyogMdcAwXr1zhwNeacBYnFst8gb/b/nkwfmg2TXQvo5l3DUd1VeGeUanpY3tFwYb3NoOWjQPPLMSOY17mpHiRBAPSqZ0Dxdm3YvxSTZ8aly+CPH5J5/ul09ClDVAClYTJNw0dDePm/+APRulKNFyxknqsNFRhoUT0mYAD5Vv6T/koFfiRspLXZzHetKp59pMt/hifnrbR2pOEt5Na8RqZskyEN6JSvl7dlZOLb8/s7eSi4XrYM7JqBOXvNIlGJ7R1nmcQKsHEGC8N164jneFx9EtHjhQ0FBS5hO6d743HAozgiZ+WvijtIdFcjpsv/e/5K5lju89cMG6jH7MOo/fUfGqCu07NrLpZxhoUpUlX62xL1lRn4BdPpwHrMBcq5EZshFwA+VY7ilHDovC/y2rdOwPDC+WrDXTwyOI+YXNbYMMa7xoXuJexnhoMPalk5xrpCQUA4EbdW6sx3b5Rg2bZIzcsBncHhYzhLf8qPxmWC+erFnGTYI8B3OaL8yGQcrBAEvwLP1b1O7kL0c34NEjcJ7/ENwd4JVZXlDIr37qNYUYg0ERzjX18H1db5ywSCMM99cfd0UreBbfiQNH3SpeTyu0IYDi3RoyOJz+/L6lmIcPOb/OKheUCuXeMJ/0uGzQG7dqsuOqbpbOCdyfNkaJte8s/avoQklZfs1wt+5fY3TEuaIkGkiv0hz29iqLkpNwkg6aHfLB2ub/e2rFLOxuQ1pF4/EmKMVYwMQYJKoZIhvcNAQkUMSQeIgA4ADgAOAAxADIAMwA0ADUANgA3ADgAOQAwADAAMAAwADEwIQYJKoZIhvcNAQkVMRQEElRpbWUgMTU0ODkzNDU4OTE5MjCCDYsGCSqGSIb3DQEHBqCCDXwwgg14AgEAMIINcQYJKoZIhvcNAQcBMCgGCiqGSIb3DQEMAQYwGgQUEXa1MC2hctvQuNkIUGScz65lVF8CAgQAgIINOGzdDugbuy+UXtj/aSWi1qUN5xx+vZiKWyz0M7ukMeyxCHyXLDMMKGtaCWoY2fVvdUPCH7SPwhLy+uALkSDpAJC+6xL8WN+JV3QYECPOS9IhLa2HMa1mSr1Y6BfPBpW+70xdr20T+Djw2svMlrkLflxyO9JJXpCxKmIYlAEdedBYyybDViHXmjshHdTb7CVeh4rD0evZc4mrUIZG5WoXkgfRKjjS2PNYaHmfo2MXsDq287Qayu7OInW283mK9/0WI3wKoHxsncfZeUgDIbje8+IMUCnDnzw79QFzYHVsHupBfK0oG8QH6gkXKR3TgQ7U6dA0KXapN6Z3yXCFqvkucnthFaCe99EF60ve22ybuKPlpvngvDAkEY25Th/Zc5kJKbOvyft2aAfVFbSDhxbH1Y+KzR7Sgm6t2BVoNF9qcm0kyUmHExRs34COWKoVC3ETcL5DmrtZbkGHC1ciV9ipdP1BfAK1OsWK1rmdCwrK6jqwHMcJVWGTTKFyLSza2h9gaBb0sQe5+X8i5yWTYdvf3ujbC5+EawhbqeyFU30ul+R8rSbwz7PKO2HotBfI9cKy74WZ3w03Cfo1b1/t61KVr5gxtmLHvtgkDsuveodq6eAgJttNUiGlFy82qF+095hS/dmxfU7l3VcG3uclsavkW6xEMX+H/MlE1QW6ck8Y/eXIGBSDTTVi9DJDAo6Wsn8qVTXYpkVbaH4FT2wTbBJVcjw22nV+P8Itoxoguj6p7XPhb2Ie87f9QH2u4kHu3qj5RVyX5hY2XXSyNVUiQ2NrfIkS8bxWvli9d6+iGjtSXnb93EUbDj6NnH7rvFmvY+7QSnZpxgvhnWTM9SXg8nmvwi/GdQOBrRIf9g/j80c/iu/2BSuGuqae523T2xnsaPQB+nSNPe3dmnf5FagARhdHo+zxpuulk7bzliyc6twje0tkcn2FGQFk0P9ILPzAYgwy66KxONdKXJP9RN3H1g0L7Z9FV5Le09kzkAQwioDsg5VMph7QHdcyg8axzhj9QkV5dJft0uvDMJXceolCODiA6hYYvnJa/pc83WMS1HTUUhioTBo4wWALp590xh1jX67wCY5kmsbjgrBN8Hys86/YNZK+ApvafFPuTdcplbCzkoL4KzapZVMnyrXt3CihqcGdyrE3hjKMVeNXe8rk6sy2ktY3AzRQapaFkHj3zBtl6XjlYVtnngTBqyMFnkr43MiDkJ2xFekoefSYJ0Qi9+sptsvVOpHG5UxylPY5UGlTn/WXI6PWjUdBWBU7OPS38aBuBs7hCGqTLmR4q6XgL71ThlvhRCA+adq0gJAjrXfkBqBol7ohwkNNN5O3DU0OGNZnO9tZK1nafRNvoDJDiDlQj95sjK9QTIO4Qd4nzuNZQTtyM5PXgTjKfHp6JQwRJZBbb9kYRlyKvQZzQ1bA8a8R/+275dFKfxhM7desv+ooUa+SmbZtK1XESMG9uUJ/qLxUGOgGKbso4jHWw+LZaglyIc6QfbnnY90hBmInp+rJOPDovEQeLHp5ffbXZwupbIfqSv3VTRCY6U8mPA3ynF/Ienf9fP4PcTHyvgkk87Ank0fn9VpVvGfBWX7opuy9bb9Dkc9/crPPUdlHR+OMkePyp2gy8lpB6MFFbKXLEbtDNXxYfO719ojDOM4PYrplKSYh4NpdNP/HL82LTfD6EVgWInMCZ5yZSKS2lKkzVmWj8nY0b1/BFglXbunLqhblZNXgIAsKua5W5ny8ticSbeq5fkqtc2eLlu5g0bDGDK9+wc0wd3H/8Z+6DHGmGi4bnX/2wxP2a3swo2rV2ZMfQapSpfGfuY3HUqpIwBahbYKPwn2E2NOLhAYVu3W6qucXAWISMfVpj5RZ2I5WFQwVFBBl/GdlptMUTiL0LMhaDXfnyYNv4c+bmDza092LVKvieFh5/lYrNd95ogU4B6buw0m468VPiM+GJ7c/iY3B1gVYq82O0O3rYod7ctD7MwObmb0nTdo7eNsR/NHOeeWttU6ZsvFjiHO7yoNJcbrRsRTZONh3SufGgSdWUzPuR6NsptuqFomvLWHctazWUAK2iMhNt8QmY528GVVRzeYWH5AgTHF60E6CRcz6wzbHdG7AXFlVf/rR4v/l8C9zv5lV3Ss778F9mDsTzCgY6niR1OeEa97Jcxn8asgrVegtCRtdOtwDNG+8/QZmpJVx5c5orJX7ULF4sg2lLYI96RtB055OkOAqfofhApO+w+9MEfFfdZooWJxzOh/eI66x8CY0DDgFcdd7chUjRoe2Y46MdxHZnLcwCfJSZwDgQyhs33gZJI5eaVqvIW2tNj8qn11xdD+6P/BN6H2FdKbi6AXpsFAv7vyBVO6v9Y4tSYCalZxETa+J0LQiLt6H1A7rUYCco/WKLwlV/SarMfR3t8tDoUERsuho9GrDRHRwVK7zIBOKAsUOS1AEE65LZ3ed6ynM2ogOTa2rbJvmvixk9gGNc4LJmSvqHNF8GQ/XKi4iq0d6OhwFX2dYDab5nsJsR4i2AnJIr56E+bGv/RBW96DXukBpXeX4EoUl20el5fAMwKL3MGwRJWf9ZsZ7SuGByIodgch0OdAmjMhoHVQw3BkBm4ABD7guyJrU2YFxSsadpGYpzXWsZ8IWAYomAFhVTXJJlZQ7Tt2QKJZeVm1TlNDdDC5U+nVgFK2ZQUheL8satcbRrWHzvOgHzo2u6A02vkzCwrm4Ez5DAEJTqyvqjb/alT0Q7+wgMLLqL7dT2IEsHFJlXsuWDeoQO39thwSGLWdGOlY2TBpO4qcJB7OdgVKdUTRKQuOrPHqMwBW5S3bivE6UluWbJx5745zR/fjLquZCFpwrCSU1yvgqyGj6RqWCv0xl46mt0PT46FTWuDjlFl+zBrA7ScziJmHIA3JoXLHPMDMgSqHASfvDFNv0sOfwyJPFo003M6uJOEDSipVDWnMQQA4aNpxoumnYJCbciMb5t8DwoH/rCsDjiTUYP8b/Xwocs90zcRL38fl3fNtIcKt80EOtbCBI3AMMdA6GZQPDitaVJIxlEccGveu4q9xpmxXs10re7OpPAh2NAI4ezOo/etww8QVkoSmnqftRVnG9QzQ8dJIcb2FiX+P1ii1Q9aqn5uPgpg8giKSQPrYGYKEEx82jYpMFtS2z9xtDqtkt+xryF9Pp+s2M8uf/1BSQaM6FvZUq241DT4CqR8sA6bZWyO0EAGJM7QBQcXciNQihmzuXiEo5Z3hTp8+YM8y6UlNBRo/+CceUlaPvamrzLG7FQ+jZpbosDkkw3156AfswrcdF9gKHUsdfHpYVKeduLKHCqSgQfBoFJCqXuz2XTjldMmzdmideer3ZTNVMl0ayEZKbf8I8psz7081q07Jp2N3/wZeIoXkuRpmsk6mMANtOCaapfTlWXe4/Q+u06jNzpF0elG5f6YSgbmNwCaUekXLe3zRTZMBIypl0Mx9J4XAuTiVCfE4wQYJE+YFg+xpMB5eoeft8rfGT0qeSlf6JoUB/1PhjcRY0eSURX4eO1HjQ8WRpMqgty/ij5fRb3GHXZmF3oK0Hs2eOD+LhAY/77cWk08ErFIEBWOjVScBFDGDwg1uhIA152BIzD/BZ7EZvNvSQVtomt4l3ojY+4IFkz+MfXtQlbKptQOIeuFwyW+/+IIluJKPU5VKPFp+x5brqPjgWgyNgiXuykt3N943Uf02lyQUG5VLQMcBhspPXQjGm+Zp0Nk72kxG5Nd0J36BCwrhajUYTY5A32tZylfCW8wWF4Ps1lANsupyg6liWnYdyN+HpLk2bV5ZQZZMpnS235fMGmUdq1qwt2yRuBAW3OuSGsjnGVeKHePdw+Uxtyej07l2xjo7PGQ2MmQbpPMLIFgFkegyQCBYtAf3Q1S9beJIYI0Jc/3tbazo4/wFamoAGmzoECW0guSJZZiJ/qIpPM+sgJGL50lKoKdjdhhXT70WDfLGUqg4llELxIm1QbHO/CxWbpK09sU6b79uU0s5Si9vkcP+Osdpsz4+DwLZqFe5eO/S19pgdSCYwwP0v48+VAqlpN1Tr+cl8JmoK8v/kEXwA0LP0XVailozD0iFGQdsddrNO7adQq1j/jyFeUXrzxVRGdYsEz68ibN3gha1F5zywKTEpdVS0T1934knPG3gML1WjQHhC011GuZWakY5/EaJrgY6IVOSmGXlIsjeDfmPTjNMq6ZYb3QkrfHt7tlyZ5vjMw0/hbLr3fQ4E3OPy8KlJMDa8oj2h+18yn8PBuewveVhNooYUwaQmEiqNKfs7wp3sEdWWs50FZ9gv7xdtO1xIRu9kTSok7lg4n3Che9cREsJI6Yv1gyMlYygrzWxmMSaYnNkYSqqQt7lC2a4N/h6qMaJh0q4cRJ+mUHd6T0hgyQ0p/k7UOD9kP2bfyxIUX1ky6Zoc+lK67b8FsLEklHM7LPM9BeaLzXRSMWkWvnUwml+XWIgDdngSfk/AGbI6RCUODmr4MPVtLhIAsazrFrRp8cIm5tIPBDlhLtjcCFYe7nP1G/XaSp9HsjA9MCEwCQYFKw4DAhoFAAQUIRcwWzft7vcw7txJ/XfQZ+QsQa4EFIt/mfLE1RsHqwjr0LQlCxr3syVsAgIEAA==</eu:Data>\n    <eu:CertificateAlias>88812345678900001</eu:CertificateAlias>\n</eu:AuthData>",
	"keyStorePassword" : "Heslo123",
	"privateKeyPassword" : "Heslo123"
}'
```
### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
	"identificationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<eu:IdentityData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n\t<eu:Dic>1234567890</eu:Dic>\n\t<eu:Ico>99999999</eu:Ico>\n\t<eu:IcDph>SK9999999999</eu:IcDph>\n\t<eu:CorporateBodyFullName>O.C.a.F.A. PORTABLE_ICDPH</eu:CorporateBodyFullName>\n\t<eu:OrganizationUnit>\n\t\t<eu:OrganizationUnitName>nepovinný názov predajne</eu:OrganizationUnitName>\n\t\t<eu:CashRegisterCode>88812345678900001</eu:CashRegisterCode>\n\t\t<eu:CashRegisterType>PORTABLE</eu:CashRegisterType>\n\t</eu:OrganizationUnit>\n\t<eu:PhysicalAddress>\n\t\t<eu:Country>Slovenská republika</eu:Country>\n\t\t<eu:Municipality>Bratislava</eu:Municipality>\n\t\t<eu:StreetName>Miletičova</eu:StreetName>\n\t\t<eu:BuildingNumber>4</eu:BuildingNumber>\n\t\t<eu:PropertyRegistrationNumber>22</eu:PropertyRegistrationNumber>\n\t\t<eu:DeliveryAddress>\n\t\t\t<eu:PostalCode>99999</eu:PostalCode>\n\t\t</eu:DeliveryAddress>\n\t</eu:PhysicalAddress>\n</eu:IdentityData>",
	"authenticationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<eu:AuthData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n    <eu:KeyStoreType>PKCS12</eu:KeyStoreType>\n    <eu:Data>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</eu:Data>\n    <eu:CertificateAlias>88812345678900001</eu:CertificateAlias>\n</eu:AuthData>",
	"keyStorePassword" : "Heslo123",
	"privateKeyPassword" : "Heslo123"
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_data** | **String** | Identification data generated in clients eKasa account. XML file as string. | 
**authentication_data** | **String** | Authentication data generated in clients eKasa account. XML file as string. | 
**key_store_password** | **String** | Password for keystore | 
**private_key_password** | **String** | Password for private key | 

### Example Response Body

```yaml
{
  "merchant": {
    "corporateFullName": "O.C.a.F.A. STANDARD_ICDPH",
    "dic": "1234567890",
    "icDph": "SK9999999999",
    "ico": "99999999",
    "id": 9113,
    "organizationUnit": {
      "cashRegisterCode": "88812345678900001",
      "cashRegisterType": "STANDARD",
      "location": {
        "physicalAddress": {
          "buildingNumber": "21",
          "country": "Slovenská republika",
          "municipality": "Nitra",
          "postalCode": "22222",
          "propertyRegistrationNumber": "980",
          "street": "Hospodárska"
        }
      },
      "name": "nepovinný názov predajne"
    },
    "physicalAddress": {
      "buildingNumber": "4",
      "country": "Slovenská republika",
      "municipality": "Bratislava",
      "postalCode": "99999",
      "propertyRegistrationNumber": "22",
      "street": "Miletičova"
    }
  }
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**merchant** | [**Merchant**](MerchantApiStore.md#Merchant) |  | [optional] 
**error_message** | **String** |  | [optional] 

#### Merchant

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printer_status** | **String** | Printer status | [optional] 
**id** | **Integer** | Generated ID by PPEKK | [optional] 
**corporate_full_name** | **String** | Corporate name as written in register | [optional] 
**ico** | **String** | Company ID | [optional] 
**dic** | **String** | Company DIC | [optional] 
**ic_dph** | **String** | Vat number of the company. If filled, merchant is automatically taken as Tax payer, otherwise merchant is set as NON! Tax payer | [optional] 
**physical_address** | [**PhysicalAddress**](MerchantApiStore.md#PhysicalAddress) |  | [optional] 
**organization_unit** | [**OrganizationUnit**](MerchantApiStore.md#OrganizationUnit) |  | [optional] 

#### PhysicalAddress

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country** | **String** | Country. e.g. Slovenská Republika | [optional] 
**municipality** | **String** | Municipality, its name of town, e.g. Karlova ves | [mandatory] 
**street** | **String** | Name of the street, e.g. Čaklovská | [mandatory] 
**building_number** | **String** | orientačné číslo | [optional] 
**property_registration_number** | **String** | číslo budovy | [optional] 
**postal_code** | **String** | Postal code | [mandatory] 

#### OrganizationUnit

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Venue name (optional) | [optional] 
**cash_register_code** | **String** | Code given to cash register by Tax office (mandatory) | 
**cash_register_type** | **String** | Type of cash register. If mobile define PORTABLE else STANDARD (mandatory) | 
**location** | [**Location**](MerchantApiStore.md#Location) |  | [optional] 

#### Location

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**physical_address** | [**PhysicalAddress**](MerchantApiStore.md#PhysicalAddress) |  | [optional] 