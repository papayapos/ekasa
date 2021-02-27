#!/usr/bin/bash

addr=http://192.168.88.5:13083/api
call() {
 curl -v --request POST --data $1 ${addr}$2
}

#MERCHANTI
# call @priklad_merchant_prenosna_neplatca.json /merchant/store
# call @priklad_merchant_prenosna_platca.json /merchant/store
# call @priklad_merchant_standard_neplatca.json /merchant/store
# call @priklad_merchant_standard_platca.json /merchant/store

# call @priklad_merchant_prenosna_neplatca_noico.json /merchant/store
# call @priklad_merchant_prenosna_platca_noico.json /merchant/store
# call @priklad_merchant_standard_neplatca_noico.json /merchant/store
# call @priklad_merchant_standard_platca_noico.json /merchant/store

# call @priklad_merchant_prenosna_neplatca_noname.json /merchant/store
# call @priklad_merchant_prenosna_platca_noname.json /merchant/store
# call @priklad_merchant_standard_neplatca_noname.json /merchant/store
# call @priklad_merchant_standard_platca_noname.json /merchant/store

# call @priklad_merchant_standard_platca_ERROR_ICOINVALID.json /merchant/store
# call @priklad_merchant_standard_platca_ERROR_DICMISMATCH.json /merchant/store
# call @priklad_merchant_standard_platca_ERROR_AUTHCERTALIAS_RAND.json /merchant/store


#DOKLADY
# call @priklad_pokladnicny_doklad.json /document/store
# call @priklad_pokladnicny_doklad_storno.json /document/store
# call @priklad_neplatny_doklad.json /document/store
# call @priklad_paragon_doklad.json /document/store
# call @priklad_uhrada_faktury.json /document/store
# call @priklad_vklad.json /cash
# call @priklad_vyber.json /cash

# call @priklad_pokladnicny_doklad_refundVratenieTovaru.json /document/store
# call @priklad_pokladnicny_doklad_updateOpravaTovaru.json /document/store
# call @priklad_pokladnicny_doklad_idKupujucehoDic.json /document/store
# call @priklad_pokladnicny_doklad_idKupujucehoDicNepovoleneZnaky.json /document/store
# call @priklad_pokladnicny_doklad_sellerDic.json /document/store
# call @priklad_pokladnicny_doklad_sellerDicNepovoleneZnaky.json /document/store
# call @priklad_pokladnicny_doklad_zlava.json /document/store
# call @priklad_pokladnicny_doklad_electronic.json /document/store
# call @priklad_pokladnicny_doklad_neplatca_price4desatinneQuantity4des.json /document/store
# call @priklad_pokladnicny_dokladPrice999.json /document/store
# call @priklad_pokladnicny_doklad_vrateneobaly.json /document/store
# call @priklad_pokladnicny_doklad_vrateneobalyNesmieIdReferencne.json /document/store /document/store
# call @priklad_pokladnicny_doklad_deposit.json /document/store
# call @priklad_pokladnicny_doklad_voucherVymena.json /document/store

 call @priklad_pokladnicny_doklad_Chyba117.json /document/store
# call @priklad_pokladnicny_doklad_Chyba118.json /document/store
# call @priklad_pokladnicny_doklad_Chyba122.json /document/store
# call @priklad_pokladnicny_doklad_Chyba128.json /document/store
# call @priklad_pokladnicny_doklad_Chyba131.json /document/store
# call @priklad_pokladnicny_doklad_ChybaVoucher.json /document/store



#LOKACIE
# call @priklad_location_gps.json /location/update
# call @priklad_location_other.json /location/update
# call @priklad_location_physical.json /location/update

#GET
# call @priklad_vyhladaj_doklad.json /document/get