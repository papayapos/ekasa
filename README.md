# Papaya Ekasa API

## Documentation for API Endpoints

All URIs are relative to *https://localhost:13083*

Service | HTTP request | Description
------------- | ------------- | -------------
[**Store Receipt**](DocumentApiStore.md#StoreDocument) | **POST** /api/document/store | Create new receipt
[**Get Receipt**](DocumentApiGet.md#GetDocument) | **POST** /api/document/get | Get last receipt
[**Get Offline**](DocumentApiGetOffline.md#GetOffline) | **POST** /api/document/get/offline | Get offline documents
[**Send Offline**](DocumentApiSendOffline.md#SendOffline) | **POST** /api/document/send/offline | Send offline requests
[**Fix Document**](DocumentApiFix.md#FixDocument) | **POST** /api/document/update | Update broken document
[**Cash**](CashApi.md#CashRequest) | **POST** /api/cash | Cash deposit/withdraw
[**Update location**](LocationApiUpdate.md#UpdateLocation) | **POST** /api/location/update | Update location
[**Fix location**](LocationApiFix.md#FixLocation) | **POST** /api/location/update | Fix location
[**Get Merchant**](MerchantApiGet.md#GetMerchant) | **POST** /api/merchant/get | Get merchant
[**Store Merchant**](MerchantApiStore.md#StoreMerchant) | **POST** /api/merchant/store | Store merchant
[**Card Payment**](TerminalCardPaymentApi.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Terminal Totals**](TerminalTotalsApi.md#Totals) | **POST** /api/terminal/totals | Terminal totals report
[**Print**](CustomPrintApi.md#Print) | **POST** /api/print | Print custom string

## Documentation for Authorization

 All endpoints do not require authorization for now.

