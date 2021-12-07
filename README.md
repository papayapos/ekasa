# Papaya Ekasa API
This repository explains how Papaya eKasa API should be used to create receipt, update location etc. on certified eKasa solution on PAX android devices. It also provides services for communication with payment Terminal application.

## To start with eKasa or Terminal API
To start with terminal API it is required for merchant to have activated Payment terminal with activated Payment Application.
To start with eKasa API it is required for mechant to have Indentification and Authentification data from Finance Portal.

### Register Terminal API and use terminal
Before you use terminal API for card payments you need to start with registration. Registration requires Merchant legal data and Terminal ID (TID). Registration is called only once. After registration, license will be created and terminal is licensed under your agreement with Papaya POS s.r.o. [**Terminal Activation**](docs/TerminalApiRegister.md#Activation)

### Create Payment
When Terminal API is activated card payment can be called. Calling the endpoint opens Payment Application and starts card reading. After successful payment transaction receipt is printed. This is only payment and for storing transaction to eKasa, transaction API needs to be called.
For this operation use API endpoint: [**Card Payment**](docs/TerminalApiCardPayment.md#CardPayment)

### Register Merchant and start with eKasa
For activating eKasa on device, it is needed to store merchant Authentication and Identification data into WORM card.
For this operation use API endpoint: [**Store Merchant**](docs/MerchantApiStore.md#StoreMerchant)

### Create receipt
Every transaction (cash or card) needs to be registered to eKasa. Calling document store endpoint registers transaction to eKasa server, it stores transaction data to WORM card in the device. It also prints receipt.
For this operation use API endpoint: [**Store Receipt**](docs/DocumentApiStore.md#StoreDocument)

### Add cash into cashdrawer
If merchant handles cash it is required to call cash movement API. Merchant is required to track his cashdrawer balance so every deposit or withdrawal needs to be registered by API call. 
For example: 
Merchant starts the day with empty cashdrawer. Merchant puts 100 EURO as starting cash to cashdrawer -> API needs to be called for 100 Euro deposit to be registered. Merchant sells during the day and at the end of the day his cashdrawer balance is 1200 EURO. Merchants withdraws the balance -> API needs to be called with withdrawal of 1200 EURO.
For this operation use API endpoint: [**Cash**](docs/CashApi.md#CashRequest)

### Change location for moving eKasa merchant
If merchant is registered as PORTABLE eKasa (not STANDARD), it is required to send address or coordinates of physical location where he is selling at. API call is required only if location is changed, there is no need to send location for every payment if it was not changed.
For this operation use API endpoint: [**Update Location**](docs/CashApi.md#UpdateLocation)

### Other functions
TODO
DAILY REPORT


## Documentation for API Endpoints


All URIs are relative to *https://localhost:13083*

Service | HTTP request | Description
------------- | ------------- | -------------
[**Store Receipt**](docs/DocumentApiStore.md#StoreDocument) | **POST** /api/document/store | Create new receipt
[**Get Receipt**](docs/DocumentApiGet.md#GetDocument) | **POST** /api/document/get | Get last receipt
[**Get Offline**](docs/DocumentApiGetOffline.md#GetOffline) | **POST** /api/document/get/offline | Get offline documents
[**Send Offline**](docs/DocumentApiSendOffline.md#SendOffline) | **POST** /api/document/send/offline | Send offline requests
[**Fix Document**](docs/DocumentApiFix.md#FixDocument) | **POST** /api/document/update | Update broken document
[**Cash**](docs/CashApi.md#CashRequest) | **POST** /api/cash | Cash deposit/withdraw
[**Update location**](docs/LocationApiUpdate.md#UpdateLocation) | **POST** /api/location/update | Update location
[**Fix location**](docs/LocationApiFix.md#FixLocation) | **POST** /api/location/update | Fix location
[**Get Merchant**](docs/MerchantApiGet.md#GetMerchant) | **POST** /api/merchant/get | Get merchant
[**Store Merchant**](docs/MerchantApiStore.md#StoreMerchant) | **POST** /api/merchant/store | Store merchant
[**Terminal Activation**](docs/TerminalApiRegister.md#Activation) | **POST** /api/terminal/register | Terminal Activation and Registration
[**Card Payment**](docs/TerminalApiCardPayment.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Terminal Totals**](docs/TerminalApiTotals.md#Totals) | **POST** /api/terminal/totals | Terminal totals report
[**Print**](docs/CustomPrintApi.md#Print) | **POST** /api/print | Print custom string
[**Setup**](docs/SetupApi.md#Setup) | **POST** /api/setup | Setup eKasa Pay settings
[**Status Printer**](docs/StatusApi.md#Printer) | **POST** /api/status/printer | Get printer status


## Documentation for Authorization

 All endpoints do not require authorization for now.

