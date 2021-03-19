# EkasaError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorCode** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**detail** | **String** |  | [optional] 


### Error codes

Response error codes are grouped into 4 categories (COMMON, RESOLVABLE, SEVERE and EKASA).

COMMON - Represent basic denial response. Something needs to be corrected in request to get things work.

RESOLVABLE - Represents error that create or describe an problem that needs to be solved with other request (ex. fixDocument) or warns about something that should be resolved soon (ex. expiring certificate)

SEVERE - Represents errors that need to be solved by technical team and technical support should be called. (ex. hardware related or bugs that break the whole funcionality of the device)

EKASA - Represent errors that were responded from Minister of Finance eKasa servers. These errors should not appear in reponse. Technical consultation or support is needed if they do.

#### Common

CODE | Message | Detail | Type
------------ | ------------- | ------------- | -------------
101 | "Nie sú nahraté údaje obchodníka" |  | 
102 | "Papaya eKasa licencia nie je platná" |  | 
103 | "Papaya Pay licencia nie je platná" |  | 
104 | "Žiadna požiadavka" |  | 
105 | "Služba nedostupná" |  | 
106 | "Blíži sa koniec platnosti certifikátu" |  | 
110 | "Zlý formát XML údajov" |  | 
111 | "DIČ nahrávaných údajov sa nezhoduje s DIČ údajov v úložisku" |  | 
112 | "Nedovolená hodnota v IÚ obchodníka" |  | 
113 | "DIČ IÚ údajov sa nezhoduje s AU údajmi obchodníka" |  | 
114 | "Neplatné AÚ obchodníka" |  | 
115 | "Zlé heslo certifikátu" |  | 
116 | "Nebolo zadané povinné pole integrátora" |  | 
120 | "ID kupujúceho a Typ ID kupujúceho musia byť vyplnené obe, alebo ani jedno" |  | 
121 | "Typ dokladu: Pokladničný doklad a Neplatný doklad musí obsahovať položky" |  | 
122 | "Faktúra musí mať číslo faktúry (1-50 znakov)" |  | 
123 | "Typ položky: Kladná nesmie mať zápornú cenu" |  | 
124 | "Typ položky: Vrátené obaly, Vrátená, Zľava, Odpočítaná záloha, Výmena poukazu - nesmie mať kladnú cenu" |  | 
125 | "Vrátená alebo opravná položka musí mať referenčné číslo dokladu (1-44 znakov)" |  | 
126 | "Číslo poukazu musí byť 1-50 znakov" |  | 
127 | "Poukaz musí mať množstvo 1" |  | 
128 | "Množstvo položky musí byť od 1 do 10 000 000" |  | 
129 | "Meno položky musí byť 1-48 znakov" |  | 
130 | "Suma účtu sa nerovná súčtu položiek" |  | 
131 | "Suma účtu nesmie byť 0" |  | 
132 | "Viacero poukazov s rovnakým čislom" |  | 
133 | "Viacero položiek sa odkazuje na ten istý poukaz" |  | 
134 | "Poukaz môže byť aplikovaný iba na kladnú položku" |  | 
135 | "Poukaz nie je použitý žiadnou položkou" |  | 
136 | "Položka sa odkazuje na neexistujúci poukaz" |  | 
137 | "ID predávajúceho a Typ ID predávajúceho musia byť vyplnené obe, alebo ani jedno" |  | 
138 | "Cena musí byť v rozsahu od -10 000 000 do 10 000 000" |  | 
140 | "Žiadne opravné dáta" |  | 
141 | "Posledný doklad nepotrebuje opravu" |  | 
142 | "Opravné dáta obsahujú viac položiek ako pôvodný doklad" |  | 
150 | "Žiadne údaje o polohe" | | 
151 | "PSČ musí obsahovať 5 čísel" | | 
152 | "Príliš dlhá adresa (obec a ulica 1-100 znakov, orientačné č. 1-20, súpisné č. 1-10, iné 1-255)" | | 
153 | "Neplatné GPS súradnice" | | 
154 | "Fyzická adresa musí obsahovať názov obce a ulice" | | 
160 | "Množstvo vkladu/výberu nesmie byť 0" | | 
170 | "Chýbajúce povinné registračné údaje" | | 
171 | "Platba s rovnakým ID už bola spracovaná" | | 
172 | "Terminál je zaneprázdnený" | | 

#### Resolvable

CODE | Message | Detail | Type
------------ | ------------- | ------------- | -------------
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 
2 | "" |  | 


#### Severe

If this messages appear it is considered as malfuncion of library or hardware component and Papaya support should be called.

CODE | Message | Detail | Type
------------ | ------------- | ------------- | -------------
300 | "" |  |

#### Ekasa

These codes are from Finance API and are handled inside this library. If any of this messages appear it is considered as malfuncion of library or hardware component and Papaya support should be called.

CODE | Error Message | Comment
------------ | ------------- | -------------
1 | "Poškodené dáta v CHDÚ" |
-2 | "Zlé vstupné hodnoty." |
-8 | "Táto verzia integračného rozhrania už nie je naďalej podporovaná." |
-10 | "Chyba v podpise dátovej správy." |
-12 | "Nesprávny formát certifikátu.." |
-13 | "Použitý certifikát nie je platný." |
-100 | "Nesprávna hodnota PKP." |
-101 | "DIČ v dátovej správe sa nezhoduje s DIČ z certifikátu." |
-102 | "Kód ORP v dátovej správe sa nezhoduje s kódom ORP z certifikátu." |
-103 | "Dátum a čas vyhotovenia dokladu je neskorší ako dátum a čas spracovania." |
-104 | "Dátum a čas vytvorenia dokladu je neskorší ako dátum a čas spracovania." |
-105 | "Dátum a čas vytvorenia dokladu je skorší ako dátum a čas spracovania." |
-106 | "Dátum a čas vyhotovenia dokladu je skorší ako dátum a čas spustenia systému." |
-107 | "Dátum a čas vytvorenia dokladu je skorší ako dátum a čas spustenia systému." |
-108 | "Dátum a čas vytvorenia údajov o polohe je neskorší ako dátum a čas spracovania." |
-109 | "Dátum a čas vytvorenia údajov o polohe je skorší ako dátum a čas spracovania." |
-110 | "Dátum a čas vytvorenia údajov o polohe je skorší ako dátum a čas spustenia systému." |
-111 | "Nesprávna hodnota OKP." |
-112 | "Číslo faktúry musí byť vyplnené pre typ dokladu: Úhrada faktúry." |
-114 | "Typ dokladu: Úhrada faktúry, Vklad, Výber nesmie obsahovať položky." |
-115 | "Číslo faktúry nesmie byť vyplnené pre typ dokladu: Pokladničný doklad, Neplatný doklad, Vklad, Výber." |
-116 | "Typ dokladu: Pokladničný doklad, Neplatný doklad musí obsahovať položky." |
-117 | "Pre typ položky: Vrátená, Opravná musí byť vyplnené Referenčné číslo dokladu, ku ktorému sa vrátenie, oprava vzťahuje." |
-118 | "Pre typ položky: Kladná, Vrátené obaly, Zľava,Odpočítaná záloha,Výmena poukazunesmie byť vyplnené Referenčné číslo dokladu." |
-119 | "Rozpis DPH musí byť vyplnené pre typdokladu: Pokladničný doklad, Neplatný doklad." |
-120 | "Suma dane základnej sadzby a Základ základnej sadzby dane musia byť vyplnené obe, alebo ani jedno." |
-121 | "Suma dane zníženej sadzby a Základ zníženej sadzby dane musia byť vyplnené obe, alebo ani jedno." |
-122 | "ID kupujúceho a Typ ID kupujúceho musia byť vyplnené obe, alebo ani jedno." |
-123 | "ID kupujúceho a Typ ID kupujúceho nesmú byť vyplnené pre typ dokladu: Neplatný doklad, Vklad, Výber." |
-124 | "Číslo paragónu je povinné v prípade evidovania paragónu." |
-125 | "Číslo paragónu môže byť vyplnené iba v prípade evidovania paragónu." |
-126 | "Paragón nie je možné zaevidovať pre typ dokladu: Neplatný doklad, Vklad, Výber." |
-127 | "Typ položky: Kladná nesmie mať zápornú cenu." |
-128 | "Typ položky: Vrátené obaly, Vrátená, Zľava, Odpočítaná záloha, Výmena poukazu nesmie mať kladnú cenu." |
-129 | "ID predávajúceho a Typ ID predávajúceho musia byť vyplnené obe, alebo ani jedno." |
-130 | "Pre priradenie dane: 20, 10 nesmie byť vyplnená Slovná informácia." |
-131 | "Pre typ položky: Kladná, Vrátené obaly, Vrátená, Zľava, Odpočítaná záloha nesmie byť vyplnené Číslo jednoúčelového poukazu." |
-132 | "Nesprávna časová zóna." |
400 | "Chyba pri spracovaní požiadavky." |
499 | "Zamietnutie požiadavky z bezpečnostných dôvodov." |
66666 | "Nepodarilo sa overiť podpis servera." | stane sa ak odpoved servera nema spravne podpisy alebo trusted certifikat (in the middle attack)
66667 | "Nepodarilo sa prečítať chybovú hlášku servera." | Nemalo by sa stat, iba v pripade ze chybaju casti chybovej spravy
99999 | "Iná chyba."; | Extra chyba na pokrytie inych pripadov, ktore by sa nemuseli zachytit
