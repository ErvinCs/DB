USE Lab01
GO
INSERT INTO Lab01.dbo.addresses
   ([addr_id],[country],[town],[addr])
VALUES
   ( 1, N'Romania', N'Cluj-Napoca', N'Strada1'),
   ( 2, N'Romania', N'Bucuresti', N'Str2'),
   ( 3, N'Romania', N'Oradea', N'Strada3'),
   ( 4, N'Romania', N'Cluj-Napoca', N'Str4'),
   ( 5, N'Romania', N'Deva', N'Strada5'),
   ( 6, N'Romania', N'Hunedoara', N'Str6'),
   ( 7, N'Romania', N'Simeria', N'Strada7'),
   ( 8, N'Romania', N'Bucuresti', N'Str8'),
   ( 9, N'Romania', N'Simeria', N'Strada9'),
   ( 10, N'Romania', N'Lugoj', N'Str10'),
   ( 11, N'Romania', N'Cluj-Napoca', N'Strada Saracilor'),
   ( 12, N'Romania', N'Cluj-Napoca', N'Strada mai putin Saraci'),
   ( 13, N'Romania', N'Cluj-Napoca', N'Doctor Street'),
   ( 14, N'Romania', N'Cluj-Napoca', N'Donor Street'),
   ( 15, N'Romania', N'Calarasi', N'Another Doctor Street'),
   ( 16, N'Romania', N'Except', N'Java lang exception'),
   ( 17, N'Romania', N'Not In', N'ABCD')

INSERT INTO Lab01.dbo.doctors
   ([doctor_id],[name],[birth_date],[CNP],[doctor_addr])
VALUES
   ( 1, N'Ionel', '29-JUN-80', 168123, 2),
   ( 2, N'Gicu', '02-NOV-67', 123456, 3),
   ( 3, N'Geanina', '29-AUG-80', 268123, 13),
   ( 4, N'G', '10-FEB-08', 268134, 15)
   --( 4, N'Uniq addr Constraint Violated', '02-NOV-67', 123456, 10)

INSERT INTO Lab01.dbo.donors
	([donor_id],[name],[birth_date],[CNP],[donor_addr])
VALUES
   ( 1, N'Donor#1', '10-FEB-08', 172224, 5),
   ( 2, N'Donor#2', '11-DEC-07', 282225, 7),
   ( 3, N'Donor#3', '13-FEB-06', 292223, 9),
   ( 4, N'Donor#4', '10-FEB-08', 292226, 14),
   ( 5, N'Ionel', '20-FEB-08', 193226, 16)

INSERT INTO Lab01.dbo.donation_centers
	([dc_id],[name],[dc_addr])
VALUES
	( 1, N'Donatioan Center de Saraci', 6),
	( 2, N'Donation Center de mai putin Saraci', 8)

INSERT INTO Lab01.dbo.patients
   ([patient_id],[name],[birth_date],[CNP],[patients_doctor],[patient_addr])
VALUES
   ( 1, N'Pacient#1', '9-FEB-08', 161123, 1, 1),
   ( 2, N'Georgel', '12-NOV-97', 123356, 1, 4),
   ( 3, N'Pacient#2', '10-FEB-08', 271124, 2, 11),
   ( 4, N'Pacient#3', '11-DEC-07', 281125, 2, 12),
   ( 5, N'Pacient#4', '13-FEB-06', 291126, 3, 10)
	
INSERT INTO Lab01.dbo.requests
	([request_id],[blood_group],[rh],[quantity],[requests_doctor])
VALUES
	(1, N'A2', N'rh-', 300, 1),
	(2, N'A2', N'rh+', 400, 1),
	(3, N'B3', N'rh+', 500, 1),
	(4, N'AB4', N'rh-', 600, 3),
	(6, NULL, NULL, 2000, 2),
	(7, N'O1', NULL, 1, 3),
	(8, NULL, N'rh-', 500, 2)
	--(9, N'VIO', N'LAT', 100, 10)

INSERT INTO Lab01.dbo.donors_donation_centers
	([donor_dc_id],[dcs_donors],[donors_dcs])
VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 2, 1),
	(4, 2, 3)

SELECT * FROM Lab01.dbo.donation_centers;
SELECT * FROM Lab01.dbo.donors;
SELECT * FROM Lab01.dbo.donors_donation_centers;
SELECT * FROM Lab01.dbo.patients;
SELECT * FROM Lab01.dbo.doctors;
SELECT * FROM Lab01.dbo.requests

GO