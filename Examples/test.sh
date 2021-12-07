#!/usr/bin/env bash

#host=192.168.88.238
host=localhost

http -f GET ${host}:13083/api/document/get/offline < priklad_offline_doklady.json

http -f GET ${host}:13083/api/document/send/offline < priklad_send_offline.json

http -f GET ${host}:13083/api/document/get < priklad_pokladnicny_doklad_kopia.json

http -f GET ${host}:13083/api/document/store < priklad_pokladnicny_doklad_electronic.json

#PRENOSNA NEPLATCA
http -f GET ${host}:13083/api/merchant/store < priklad_merchant_prenosna_neplatca.json

http -f GET ${host}:13083/api/cash < priklad_vklad.json

http -f GET ${host}:13083/api/document/store < priklad_neplatny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_paragon_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_pokladnicny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_uhrada_faktury.json

http -f GET ${host}:13083/api/cash < priklad_vyber.json

http -f GET ${host}:13083/api/location/update < priklad_location_gps.json

http -f GET ${host}:13083/api/location/update < priklad_location_physical.json

http -f GET ${host}:13083/api/location/update < priklad_location_other.json

http -f GET ${host}:13083/api/location/update < priklad_location_fix.json

#PRENOSNA PLATCA
http -f GET ${host}:13083/api/merchant/store < priklad_merchant_prenosna_platca.json

http -f GET ${host}:13083/api/cash < priklad_vklad.json

http -f GET ${host}:13083/api/document/store < priklad_neplatny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_paragon_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_pokladnicny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_uhrada_faktury.json

http -f GET ${host}:13083/api/cash < priklad_vyber.json

#STANDARDNA NEPLATCA
http -f GET ${host}:13083/api/merchant/store < priklad_merchant_standard_neplatca.json

http -f GET ${host}:13083/api/cash < priklad_vklad.json

http -f GET ${host}:13083/api/document/store < priklad_neplatny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_paragon_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_pokladnicny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_uhrada_faktury.json

http -f GET ${host}:13083/api/cash < priklad_vyber.json

#STANDARDNA PLATCA
http -f GET ${host}:13083/api/merchant/store < priklad_merchant_standard_platca.json

http -f GET ${host}:13083/api/cash < priklad_vklad.json

http -f GET ${host}:13083/api/document/store < priklad_neplatny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_paragon_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_pokladnicny_doklad.json

http -f GET ${host}:13083/api/document/store < priklad_uhrada_faktury.json

http -f GET ${host}:13083/api/cash < priklad_vyber.json


#OPRAVA DOKLADU
http -f GET ${host}:13083/api/document/update < priklad_fix_document.json
###

#PLATBA
http -f GET ${host}:13083/api/terminal/register < priklad_pay_register.json
http -f GET ${host}:13083/api/terminal/pay < priklad_pay_payment.json

