-- Companies
INSERT INTO PUBLIC.COMPANY (ID, CODE, CODECONTEXT, NAME) VALUES (11, '123', 'ABC', 'ACME Travel Agency');
INSERT INTO PUBLIC.COMPANY (ID, CODE, CODECONTEXT, NAME) VALUES (23, '123', 'DEF', 'Hotel Königsberg');
INSERT INTO PUBLIC.COMPANY (ID, CODE, CODECONTEXT, NAME) VALUES (36, '123', 'DEF', 'Hotel Kaiserberg');
INSERT INTO PUBLIC.COMPANY (ID, CODE, CODECONTEXT, NAME) VALUES (55, '322', 'EDR', 'Hotel Sasso Verde');
INSERT INTO PUBLIC.COMPANY (ID, CODE, CODECONTEXT, NAME) VALUES (72, '123', 'KJF', 'Super Luxus Hotel');

-- Company addresses
INSERT INTO PUBLIC.COMPANY_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, COMPANY_ID) VALUES ('Musterstraße 1', 'Flaneid', 'IT', '12345', 11);
INSERT INTO PUBLIC.COMPANY_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, COMPANY_ID) VALUES ('Kurneystr. 110 ', 'Bogel', 'DE', '56357', 23);
INSERT INTO PUBLIC.COMPANY_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, COMPANY_ID) VALUES ('Oscar-Wilde-Str. 73', 'Langenhahn', 'DE', '54316', 36);
INSERT INTO PUBLIC.COMPANY_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, COMPANY_ID) VALUES ('Werseblick 169a', 'Contalino', 'IT', '32455', 55);
INSERT INTO PUBLIC.COMPANY_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, COMPANY_ID) VALUES ('Avendruper Str. 22', 'Osterburg', 'DE', '39606', 72);

-- Company emails
INSERT INTO PUBLIC.COMPANY_EMAIL (EMAIL, COMPANY_ID) VALUES ('info@example.com', 11);
INSERT INTO PUBLIC.COMPANY_EMAIL (EMAIL, COMPANY_ID) VALUES ('k.tacke@mail.xyz', 23);
INSERT INTO PUBLIC.COMPANY_EMAIL (EMAIL, COMPANY_ID) VALUES ('christa.koch@mail.xyz', 36);
INSERT INTO PUBLIC.COMPANY_EMAIL (EMAIL, COMPANY_ID) VALUES ('info@sassoverde.xyz', 55);
INSERT INTO PUBLIC.COMPANY_EMAIL (EMAIL, COMPANY_ID) VALUES ('info@superluxushotel.com', 72);

-- Company telephones
INSERT INTO PUBLIC.COMPANY_TELEPHONE (PHONENUMBER, PHONETECHTYPE, COMPANY_ID) VALUES ('+391234567890', '1', 11);
INSERT INTO PUBLIC.COMPANY_TELEPHONE (PHONENUMBER, PHONETECHTYPE, COMPANY_ID) VALUES ('+497354982334', '1', 23);
INSERT INTO PUBLIC.COMPANY_TELEPHONE (PHONENUMBER, PHONETECHTYPE, COMPANY_ID) VALUES ('+49234262436', '1', 36);
INSERT INTO PUBLIC.COMPANY_TELEPHONE (PHONENUMBER, PHONETECHTYPE, COMPANY_ID) VALUES ('+393452346246', '1', 55);
INSERT INTO PUBLIC.COMPANY_TELEPHONE (PHONENUMBER, PHONETECHTYPE, COMPANY_ID) VALUES ('+395633567455', '1', 72);

-- Customers
INSERT INTO PUBLIC.CUSTOMER (ID, BIRTHDATE, GENDER, GIVENNAME, LANGUAGE, NAMEPREFIX, NAMETITLE, SURNAME) VALUES (1, '1980-01-01', 'Male', 'Otto', 'de', 'Herr', 'Dr', 'Mustermann');
INSERT INTO PUBLIC.CUSTOMER (ID, BIRTHDATE, GENDER, GIVENNAME, LANGUAGE, NAMEPREFIX, NAMETITLE, SURNAME) VALUES (16, '1996-06-03', 'Male', 'Konstantin', 'de', 'Herr', 'Dr', 'Tacke');
INSERT INTO PUBLIC.CUSTOMER (ID, BIRTHDATE, GENDER, GIVENNAME, LANGUAGE, NAMEPREFIX, NAMETITLE, SURNAME) VALUES (27, '1974-12-03', 'Female', 'Astrid', 'en', 'Frau', 'Prof.', 'Kowalski');
INSERT INTO PUBLIC.CUSTOMER (ID, BIRTHDATE, GENDER, GIVENNAME, LANGUAGE, NAMEPREFIX, NAMETITLE, SURNAME) VALUES (45, null, null, 'Astrid', null, 'Frau', null, 'Kowalski');
INSERT INTO PUBLIC.CUSTOMER (ID, BIRTHDATE, GENDER, GIVENNAME, LANGUAGE, NAMEPREFIX, NAMETITLE, SURNAME) VALUES (49, '1974-12-03', 'Female', 'Gianna', 'it', 'Frau', null, 'Contorana');
INSERT INTO PUBLIC.CUSTOMER (ID, BIRTHDATE, GENDER, GIVENNAME, LANGUAGE, NAMEPREFIX, NAMETITLE, SURNAME) VALUES (59, '1978-11-01', 'Male', 'Anton', 'de', 'Herr', null, 'Ganter');
INSERT INTO PUBLIC.CUSTOMER (ID, BIRTHDATE, GENDER, GIVENNAME, LANGUAGE, NAMEPREFIX, NAMETITLE, SURNAME) VALUES (63, '1980-01-01', 'Male', 'Peter', 'de', 'Herr', null, 'Lustig');

-- Customer addresses
INSERT INTO PUBLIC.CUSTOMER_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, REMARK, CUSTOMER_ID) VALUES ('Musterstraße 1', 'Musterstadt', 'DE', '1234', 'catalog:yes', 1);
INSERT INTO PUBLIC.CUSTOMER_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, REMARK, CUSTOMER_ID) VALUES ('Innsbruckweg 62', 'Rethwisch', 'DE', '25566', 'catalog:no', 16);
INSERT INTO PUBLIC.CUSTOMER_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, REMARK, CUSTOMER_ID) VALUES ('Kleiner Griechenmarkt 19', 'Rieste', 'DE', '77975', 'catalog:no', 27);
INSERT INTO PUBLIC.CUSTOMER_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, REMARK, CUSTOMER_ID) VALUES ('Boschetto 32', 'Alldarno', 'IT', '98753', 'catalog:yes', 49);
INSERT INTO PUBLIC.CUSTOMER_ADDRESS (ADDRESSLINE, CITYNAME, COUNTRYNAMECODE, POSTALCODE, REMARK, CUSTOMER_ID) VALUES ('Mersmannsstiege 65', 'Tettenweis', 'DE', '94167', 'catalog:yes', 63);

-- Customer emails
INSERT INTO PUBLIC.CUSTOMER_EMAIL (EMAIL, REMARK, CUSTOMER_ID) VALUES ('otto.mustermann@example.com', 'newsletter:yes', 1);
INSERT INTO PUBLIC.CUSTOMER_EMAIL (EMAIL, REMARK, CUSTOMER_ID) VALUES ('l.cremer@mail.xyz', 'newsletter:no', 16);
INSERT INTO PUBLIC.CUSTOMER_EMAIL (EMAIL, REMARK, CUSTOMER_ID) VALUES ('a.kowalski@mail.xyz', 'newsletter:yes', 27);
INSERT INTO PUBLIC.CUSTOMER_EMAIL (EMAIL, REMARK, CUSTOMER_ID) VALUES ('gianna.k@mail.xyz', 'newsletter:yes', 49);
INSERT INTO PUBLIC.CUSTOMER_EMAIL (EMAIL, REMARK, CUSTOMER_ID) VALUES ('peter.lustig@example.com', 'newsletter:yes', 63);

-- Customer telephones
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (2, '+4934567891', '1', 1);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (3, '+4934567892', '3', 1);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (4, '+4934567893', '5', 1);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (17, '+4922070799', '1', 16);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (18, '+4971144320', '5', 16);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (28, '+492343462346', '5', 27);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (29, '+495672335524', '5', 27);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (50, '+3934235234555', '1', 49);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (51, '+3934523462346', '5', 49);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (64, '+49893450984', '1', 63);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (65, '+49234864235', '3', 63);
INSERT INTO PUBLIC.CUSTOMER_TELEPHONE (ID, PHONENUMBER, PHONETECHTYPE, CUSTOMER_ID) VALUES (66, '+49298735566', '5', 63);

-- Hotel reservations
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('b5cf61ee-cb91-467b-ac6f-e4dd3a94f931', '2018-12-11 00:27:54.741000', 'Reserved', '2018-12-11 00:27:54.743000', 1);
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('3b560d25-b4fd-42d0-8368-3ddb058af9af', '2018-12-11 00:27:54.766000', 'Reserved', '2018-12-11 00:27:54.766000', 16);
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('77ae8c52-4087-4d99-818e-0678325842fa', '2018-12-11 00:27:54.769000', 'Reserved', '2018-12-11 00:27:54.769000', 27);
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('5f548bb5-c179-479d-b5c7-33d106e7ee3a', '2018-12-11 00:27:54.773000', 'Reserved', '2018-12-11 00:27:54.773000', 45);
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('9adf2330-0519-4ef7-b2ca-83a9d22ed2d2', '2018-12-11 00:27:54.774000', 'Requested', '2018-12-11 00:27:54.774000', 49);
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('08b8c997-73ac-4ca2-9537-c41586929716', '2018-12-11 00:27:54.777000', 'Requested', '2018-12-11 00:27:54.777000', 59);
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('2fcfe954-b9b1-4e67-9b68-ec4c7295e3fc', '2018-12-11 00:27:54.777000', 'Modify', '2018-12-11 00:27:54.778000', 63);
INSERT INTO PUBLIC.HOTEL_RESERVATION (ID, CREATED, RESSTATUS, UPDATED, CUSTOMER_ID) VALUES ('848566f0-560b-4cc4-a069-129693aab335', '2018-12-11 00:27:54.780000', 'Cancelled', '2018-12-11 00:27:54.780000', null);

-- Global infos
INSERT INTO PUBLIC.GLOBAL_INFO (ID, CUSTOMERCOMMENT, PENALTYDESCRIPTION, COMPANY_ID, HOTELRESERVATION_ID) VALUES (10, STRINGDECODE('Sind Hunde erlaubt?\n\nMfg.\nOtto Mustermann.'), STRINGDECODE('Cancellation is handled by hotel.\nPenalty is 50%, if canceled within 3 days before show, 100% otherwise.'), 11, 'b5cf61ee-cb91-467b-ac6f-e4dd3a94f931');
INSERT INTO PUBLIC.GLOBAL_INFO (ID, CUSTOMERCOMMENT, PENALTYDESCRIPTION, COMPANY_ID, HOTELRESERVATION_ID) VALUES (22, STRINGDECODE('Sehr geehrte Damen und Herren,\n\nich vertrage kein Gemüse'), STRINGDECODE('Cancellation is handled by hotel.\nPenalty is 50%, if canceled within 3 days before show, 100% otherwise.'), 23, '3b560d25-b4fd-42d0-8368-3ddb058af9af');
INSERT INTO PUBLIC.GLOBAL_INFO (ID, CUSTOMERCOMMENT, PENALTYDESCRIPTION, COMPANY_ID, HOTELRESERVATION_ID) VALUES (35, 'Ich freue mich auf den Aufenthalt!', STRINGDECODE('Cancellation is handled by hotel.\nPenalty is 50%, if canceled within 3 days before show, 100% otherwise.'), 36, '77ae8c52-4087-4d99-818e-0678325842fa');
INSERT INTO PUBLIC.GLOBAL_INFO (ID, CUSTOMERCOMMENT, PENALTYDESCRIPTION, COMPANY_ID, HOTELRESERVATION_ID) VALUES (48, null, null, null, '5f548bb5-c179-479d-b5c7-33d106e7ee3a');
INSERT INTO PUBLIC.GLOBAL_INFO (ID, CUSTOMERCOMMENT, PENALTYDESCRIPTION, COMPANY_ID, HOTELRESERVATION_ID) VALUES (54, 'Buon giorno', null, 55, '9adf2330-0519-4ef7-b2ca-83a9d22ed2d2');
INSERT INTO PUBLIC.GLOBAL_INFO (ID, CUSTOMERCOMMENT, PENALTYDESCRIPTION, COMPANY_ID, HOTELRESERVATION_ID) VALUES (62, null, null, null, '08b8c997-73ac-4ca2-9537-c41586929716');
INSERT INTO PUBLIC.GLOBAL_INFO (ID, CUSTOMERCOMMENT, PENALTYDESCRIPTION, COMPANY_ID, HOTELRESERVATION_ID) VALUES (71, null, 'No penalty at all', 72, '2fcfe954-b9b1-4e67-9b68-ec4c7295e3fc');

-- Translations
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (13, 'de', 'Parkplatz');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (14, 'de', 'Schwimmbad');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (15, 'de', 'Skipass');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (25, 'de', 'Parkplatz');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (26, 'de', 'Schwimmbad');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (39, 'de', 'Parkplatz');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (40, 'de', 'Schwimmbad');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (41, 'de', 'Sauna');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (42, 'en', 'Parking');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (43, 'en', 'Pool');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (44, 'en', 'Sauna');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (58, 'it', 'Parcheggio');
INSERT INTO PUBLIC.TRANSLATION (ID, LANGUAGE, VALUE) VALUES (74, 'de', 'Heliport');

-- Global info translations
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (10, 13);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (10, 14);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (10, 15);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (22, 25);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (22, 26);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (35, 39);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (35, 40);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (35, 41);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (35, 42);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (35, 43);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (35, 44);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (54, 58);
INSERT INTO PUBLIC.GLOBAL_INFO_TRANSLATION (GLOBALINFOENTITY_ID, INCLUDEDSERVICES_ID) VALUES (71, 74);

-- Hotel reservation IDs
INSERT INTO PUBLIC.HOTEL_RESERVATION_ID (ID, RESIDSOURCE, RESIDSOURCECONTEXT, RESIDTYPE, RESIDVALUE, GLOBALINFO_ID) VALUES (12, 'www.example.com', 'top banner', 13, 'Slogan', 10);
INSERT INTO PUBLIC.HOTEL_RESERVATION_ID (ID, RESIDSOURCE, RESIDSOURCECONTEXT, RESIDTYPE, RESIDVALUE, GLOBALINFO_ID) VALUES (24, 'www.processinform.com', 'top banner', 13, 'Slogan', 22);
INSERT INTO PUBLIC.HOTEL_RESERVATION_ID (ID, RESIDSOURCE, RESIDSOURCECONTEXT, RESIDTYPE, RESIDVALUE, GLOBALINFO_ID) VALUES (37, 'www.togog222.com', 'top banner', 13, 'Slogan', 35);
INSERT INTO PUBLIC.HOTEL_RESERVATION_ID (ID, RESIDSOURCE, RESIDSOURCECONTEXT, RESIDTYPE, RESIDVALUE, GLOBALINFO_ID) VALUES (38, 'www.togog222.com', 'left banner', 13, 'Header', 35);
INSERT INTO PUBLIC.HOTEL_RESERVATION_ID (ID, RESIDSOURCE, RESIDSOURCECONTEXT, RESIDTYPE, RESIDVALUE, GLOBALINFO_ID) VALUES (56, 'www.togog222.com', 'top banner', 13, 'Slogan', 54);
INSERT INTO PUBLIC.HOTEL_RESERVATION_ID (ID, RESIDSOURCE, RESIDSOURCECONTEXT, RESIDTYPE, RESIDVALUE, GLOBALINFO_ID) VALUES (57, 'www.togog222.com', 'left banner', 13, 'Header', 54);
INSERT INTO PUBLIC.HOTEL_RESERVATION_ID (ID, RESIDSOURCE, RESIDSOURCECONTEXT, RESIDTYPE, RESIDVALUE, GLOBALINFO_ID) VALUES (73, 'www.bigbook.com', 'top banner', 13, 'Slogan', 71);

-- Payment cards
INSERT INTO PUBLIC.PAYMENT_CARD (ID, CARDCODE, CARDHOLDERNAME, CARDNUMBERPLAIN, ENCRYPTEDVALUE, ENCRYPTIONMETHOD, EXPIREDATE) VALUES (6, 'VI', 'Otto Mustermann', '4444333322221111', null, null, 1216);
INSERT INTO PUBLIC.PAYMENT_CARD (ID, CARDCODE, CARDHOLDERNAME, CARDNUMBERPLAIN, ENCRYPTEDVALUE, ENCRYPTIONMETHOD, EXPIREDATE) VALUES (20, 'VI', 'Konstantin Tacke', '5165 4856 6654 6661', null, null, 1018);
INSERT INTO PUBLIC.PAYMENT_CARD (ID, CARDCODE, CARDHOLDERNAME, CARDNUMBERPLAIN, ENCRYPTEDVALUE, ENCRYPTIONMETHOD, EXPIREDATE) VALUES (31, 'VI', 'Arthur Ortmann', null, 'SOME_ENCRYPTED_VALUE', 'RSA-PKCSV2.2', 1018);
INSERT INTO PUBLIC.PAYMENT_CARD (ID, CARDCODE, CARDHOLDERNAME, CARDNUMBERPLAIN, ENCRYPTEDVALUE, ENCRYPTIONMETHOD, EXPIREDATE) VALUES (68, 'VI', 'Peter Lustig', '66664444222211115666', null, null, 1216);

-- Rate plans
INSERT INTO PUBLIC.RATE_PLAN (RATEPLANCODE, COMMISSIONAMOUNT, COMMISSIONCURRENCYCODE, COMMISSIONPERCENT, MEALPLANCODES, MEALPLANINDICATOR) VALUES ('123456-xyz', null, null, 15, 1, true);
INSERT INTO PUBLIC.RATE_PLAN (RATEPLANCODE, COMMISSIONAMOUNT, COMMISSIONCURRENCYCODE, COMMISSIONPERCENT, MEALPLANCODES, MEALPLANINDICATOR) VALUES ('7892-yyy', null, null, 15, 1, true);
INSERT INTO PUBLIC.RATE_PLAN (RATEPLANCODE, COMMISSIONAMOUNT, COMMISSIONCURRENCYCODE, COMMISSIONPERCENT, MEALPLANCODES, MEALPLANINDICATOR) VALUES ('rateplan-xxx', 14.5, 'EUR', null, 3, true);
INSERT INTO PUBLIC.RATE_PLAN (RATEPLANCODE, COMMISSIONAMOUNT, COMMISSIONCURRENCYCODE, COMMISSIONPERCENT, MEALPLANCODES, MEALPLANINDICATOR) VALUES ('rateplan-yyy', null, null, null, 3, true);
INSERT INTO PUBLIC.RATE_PLAN (RATEPLANCODE, COMMISSIONAMOUNT, COMMISSIONCURRENCYCODE, COMMISSIONPERCENT, MEALPLANCODES, MEALPLANINDICATOR) VALUES ('rateplan-requested-xxx', null, null, 9, 10, true);
INSERT INTO PUBLIC.RATE_PLAN (RATEPLANCODE, COMMISSIONAMOUNT, COMMISSIONCURRENCYCODE, COMMISSIONPERCENT, MEALPLANCODES, MEALPLANINDICATOR) VALUES ('modify-xyz', null, null, 4, 1, true);

-- Room stays
INSERT INTO PUBLIC.ROOM_STAY (ID, AMOUNTAFTERTAX, CURRENCYCODE, ROOMCLASSIFICATIONCODE, ROOMTYPECODE, HOTELRESERVATION_ID, PAYMENTCARD_ID, RATEPLAN_RATEPLANCODE) VALUES (5, 299, 'EUR', 42, 'bigsuite', 'b5cf61ee-cb91-467b-ac6f-e4dd3a94f931', 6, '123456-xyz');
INSERT INTO PUBLIC.ROOM_STAY (ID, AMOUNTAFTERTAX, CURRENCYCODE, ROOMCLASSIFICATIONCODE, ROOMTYPECODE, HOTELRESERVATION_ID, PAYMENTCARD_ID, RATEPLAN_RATEPLANCODE) VALUES (19, 417, 'CHF', 42, 'bigsuite', '3b560d25-b4fd-42d0-8368-3ddb058af9af', 20, '7892-yyy');
INSERT INTO PUBLIC.ROOM_STAY (ID, AMOUNTAFTERTAX, CURRENCYCODE, ROOMCLASSIFICATIONCODE, ROOMTYPECODE, HOTELRESERVATION_ID, PAYMENTCARD_ID, RATEPLAN_RATEPLANCODE) VALUES (30, 219.17, 'CHF', 13, 'smsuite', '77ae8c52-4087-4d99-818e-0678325842fa', 31, 'rateplan-xxx');
INSERT INTO PUBLIC.ROOM_STAY (ID, AMOUNTAFTERTAX, CURRENCYCODE, ROOMCLASSIFICATIONCODE, ROOMTYPECODE, HOTELRESERVATION_ID, PAYMENTCARD_ID, RATEPLAN_RATEPLANCODE) VALUES (46, 219.17, 'CHF', 13, 'smsuite', '5f548bb5-c179-479d-b5c7-33d106e7ee3a', null, 'rateplan-yyy');
INSERT INTO PUBLIC.ROOM_STAY (ID, AMOUNTAFTERTAX, CURRENCYCODE, ROOMCLASSIFICATIONCODE, ROOMTYPECODE, HOTELRESERVATION_ID, PAYMENTCARD_ID, RATEPLAN_RATEPLANCODE) VALUES (52, 197.43, 'USD', 42, 'bigsuite', '9adf2330-0519-4ef7-b2ca-83a9d22ed2d2', null, 'rateplan-requested-xxx');
INSERT INTO PUBLIC.ROOM_STAY (ID, AMOUNTAFTERTAX, CURRENCYCODE, ROOMCLASSIFICATIONCODE, ROOMTYPECODE, HOTELRESERVATION_ID, PAYMENTCARD_ID, RATEPLAN_RATEPLANCODE) VALUES (60, null, null, null, null, '08b8c997-73ac-4ca2-9537-c41586929716', null, null);
INSERT INTO PUBLIC.ROOM_STAY (ID, AMOUNTAFTERTAX, CURRENCYCODE, ROOMCLASSIFICATIONCODE, ROOMTYPECODE, HOTELRESERVATION_ID, PAYMENTCARD_ID, RATEPLAN_RATEPLANCODE) VALUES (67, 7234, 'EUR', 42, 'bigsuite', '2fcfe954-b9b1-4e67-9b68-ec4c7295e3fc', 68, 'modify-xyz');

-- Time spans
INSERT INTO PUBLIC.TIME_SPAN (DURATION, EARLIESTDATE, END, LATESTDATE, START, ROOMSTAY_ID) VALUES (null, null, '2012-01-12', null, '2012-01-01', 5);
INSERT INTO PUBLIC.TIME_SPAN (DURATION, EARLIESTDATE, END, LATESTDATE, START, ROOMSTAY_ID) VALUES (null, null, '2018-11-27', null, '2018-11-12', 19);
INSERT INTO PUBLIC.TIME_SPAN (DURATION, EARLIESTDATE, END, LATESTDATE, START, ROOMSTAY_ID) VALUES (null, null, '2018-01-15', null, '2018-01-12', 30);
INSERT INTO PUBLIC.TIME_SPAN (DURATION, EARLIESTDATE, END, LATESTDATE, START, ROOMSTAY_ID) VALUES (null, null, '2018-11-15', null, '2018-11-12', 46);
INSERT INTO PUBLIC.TIME_SPAN (DURATION, EARLIESTDATE, END, LATESTDATE, START, ROOMSTAY_ID) VALUES (null, null, '2018-09-09', null, '2018-09-03', 52);
INSERT INTO PUBLIC.TIME_SPAN (DURATION, EARLIESTDATE, END, LATESTDATE, START, ROOMSTAY_ID) VALUES (5, '2018-01-12', null, '2018-01-15', null, 60);
INSERT INTO PUBLIC.TIME_SPAN (DURATION, EARLIESTDATE, END, LATESTDATE, START, ROOMSTAY_ID) VALUES (null, null, '2013-01-12', null, '2013-01-01', 67);

-- Guest counts
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (7, null, 2, 5);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (8, 9, 1, 5);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (9, 3, 1, 5);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (21, null, 3, 19);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (32, null, 3, 30);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (33, 3, 1, 30);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (34, 7, 1, 30);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (47, null, 1, 46);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (53, null, 2, 52);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (61, null, 1, 60);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (69, null, 2, 67);
INSERT INTO PUBLIC.GUEST_COUNT (ID, AGE, COUNT, ROOMSTAY_ID) VALUES (70, 1, 2, 67);