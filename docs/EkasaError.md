# EkasaError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorType** | **String** |  | [optional] 
**errorCode** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**detail** | **String** |  | [optional] 


### ERROR TYPES

1, "Poškodené dáta v CHDÚ",
-2, "Zlé vstupné hodnoty.",
-8, "Táto verzia integračného rozhrania už nie je naďalej podporovaná.",
-10, "Chyba v podpise dátovej správy.",
-12, "Nesprávny formát certifikátu..",
-13, "Použitý certifikát nie je platný.",
-100, "Nesprávna hodnota PKP.",
-101, "DIČ v dátovej správe sa nezhoduje s DIČ z certifikátu.",
-102, "Kód ORP v dátovej správe sa nezhoduje s kódom ORP z certifikátu.",
-103, "Dátum a čas vyhotovenia dokladu je neskorší ako dátum a čas spracovania.",
-104, "Dátum a čas vytvorenia dokladu je neskorší ako dátum a čas spracovania.",
-105, "Dátum a čas vytvorenia dokladu je skorší ako dátum a čas spracovania.",
-106, "Dátum a čas vyhotovenia dokladu je skorší ako dátum a čas spustenia systému.",
-107, "Dátum a čas vytvorenia dokladu je skorší ako dátum a čas spustenia systému.",
-108, "Dátum a čas vytvorenia údajov o polohe je neskorší ako dátum a čas spracovania.",
-109, "Dátum a čas vytvorenia údajov o polohe je skorší ako dátum a čas spracovania.",
-110, "Dátum a čas vytvorenia údajov o polohe je skorší ako dátum a čas spustenia systému.",
-111, "Nesprávna hodnota OKP.",
-112, "Číslo faktúry musí byť vyplnené pre typ dokladu: Úhrada faktúry.",
-113, "Rozpis DPH nesmie byt vyplnené pre typ dokladu: Úhrada faktúry, Vklad, Výber.",
-114, "Typ dokladu: Úhrada faktúry, Vklad, Výber nesmie obsahovať položky.",
-115, "Číslo faktúry nesmie byť vyplnené pre typ dokladu: Pokladničný doklad, Neplatný doklad, Vklad, Výber.",
-116, "Typ dokladu: Pokladničný doklad, Neplatný doklad musí obsahovať položky.",
-117, "Pre typ položky: Vrátená, Opravná musí byť vyplnené Referenčné číslo dokladu, ku ktorému sa vrátenie, oprava vzťahuje.",
-118, "Pre typ položky: Kladná, Vrátené obaly, Zľava,Odpočítaná záloha,Výmena poukazunesmie byť vyplnené Referenčné číslo dokladu.",
-119, "Rozpis DPH musí byť vyplnené pre typdokladu: Pokladničný doklad, Neplatný doklad.",
-120, "Suma dane základnej sadzby a Základ základnej sadzby dane musia byť vyplnené obe, alebo ani jedno.",
-121, "Suma dane zníženej sadzby a Základ zníženej sadzby dane musia byť vyplnené obe, alebo ani jedno.",
-122, "ID kupujúceho a Typ ID kupujúceho musia byť vyplnené obe, alebo ani jedno.",
-123, "ID kupujúceho a Typ ID kupujúceho nesmú byť vyplnené pre typ dokladu: Neplatný doklad, Vklad, Výber.",
-124, "Číslo paragónu je povinné v prípade evidovania paragónu.",
-125, "Číslo paragónu môže byť vyplnené iba v prípade evidovania paragónu.",
-126, "Paragón nie je možné zaevidovať pre typ dokladu: Neplatný doklad, Vklad, Výber.",
-127, "Typ položky: Kladná nesmie mať zápornú cenu.",
-128, "Typ položky: Vrátené obaly, Vrátená, Zľava, Odpočítaná záloha, Výmena poukazu nesmie mať kladnú cenu.",
-129, "ID predávajúceho a Typ ID predávajúceho musia byť vyplnené obe, alebo ani jedno.",
-130, "Pre priradenie dane: 20, 10 nesmie byť vyplnená Slovná informácia.",
-131, "Pre typ položky: Kladná, Vrátené obaly, Vrátená, Zľava, Odpočítaná záloha nesmie byť vyplnené Číslo jednoúčelového poukazu.",
-132, "Nesprávna časová zóna.",
400, "Chyba pri spracovaní požiadavky.",
499, "Zamietnutie požiadavky z bezpečnostných dôvodov.",
66666, "Nepodarilo sa overiť podpis servera." // stane sa ak odpoved servera nema spravne podpisy alebo trusted certifikat
66667, "Nepodarilo sa prečítať chybovú hlášku servera.", // nemalo by sa stat, iba v pripade ze chybaju casti chybovej spravy, alebo sa rozsype java pri jej citani
99999, "Iná chyba."; // extra chyba na pokrytie inych pripadov, ktore by sa nemuseli zachytit
