-- Inserting values into the tables created in retailanaytics database

USE retailanalytics;

INSERT INTO Businesses (Id, Business) VALUES
(10000022, 'PizzaExpress'),
(10000024, 'Holland & Barrett'),
(10000025, 'Cafe Rouge'),
(10000026, 'Lloyds TSB'),
(10000029, 'Boots The Chemist'),
(10000031, 'HSBC'),
(10000032, 'The Body Shop'),
(10000033, 'ABC Pharmacy'),
(10000034, 'Oxfam');


INSERT INTO Premises (Id, Street, PostCode, StreetNo, BusinessId) VALUES
(8016, 'Portobello Road', 'W11 2DY', '79', 10000025),
(4920, 'Kendal Street', 'W2 2AW', NULL, 10000034),
(2285, 'Earls Court Road', 'W8 6EA', '10', 10000029),
(3859, 'Glenburnie Road', 'SW17 7PJ', '15a', 10000024),
(9484, 'Mere Street', 'IP22 4AD', '6', 10000026),
(1839, 'Commerical Road', 'NG6 8HA', '16', 10000032),
(4837, 'Wilmslow Road', 'M20 3BW', '432-434', 10000031),
(2958, 'Edgware Road', 'W2 1ET', '62-64', 10000028),
(2020, 'York Road', 'TS26 9EN', NULL, 10000022),
(5472, 'Preston Road', 'BN1 4QF', NULL, 10000033);


INSERT INTO Footfall (WeekNo, PremisesId, Count) VALUES
(32, 8016, 382),
(32, 4920, 182),
(32, 2285, 948),
(32, 3859, 272),
(32, 1839, 272),
(32, 4837, 494),
(32, 2958, 220),
(32, 2020, 181),
(32, 5472, 282),
(33, 8016, 494),
(33, 4920, 282),
(33, 2285, 952),
(33, 3859, 282),
(33, 9484, 383),
(33, 1839, 181),
(33, 4837, 285),
(33, 2958, 494),
(33, 2020, 289),
(33, 5472, 393),
(34, 8016, 821),
(34, 4920, 712),
(34, 2285, 284),
(34, 3859, 595),
(34, 1839, 595),
(34, 4837, 181),
(34, 2958, 959),
(34, 2020, 404),
(34, 5472, 817);
