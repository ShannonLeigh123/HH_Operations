/* Household Operations Monthly Database - SQL Script
   This script inserts values into the tables.
*/

/* Insert sample data into the pet table */
Insert Into [dbo].[pets] (name, species, gender, age, pet_location)
Values
('Mr.Miyagi', 'Cat', 'Lord', 14, 'Indoor'),
('FrankieBlueEyes', 'Cat', 'Lord', 8, 'Indoor'),
('HarryJPotter', 'Cat', 'Lord', 8, 'Indoor'),
('RonBWeasley', 'Cat', 'Lord', 8, 'Indoor'),
('HermoineJGranger', 'Cat', 'Lady', 8, 'Indoor'),
('JackABlackABean', 'Cat', 'Lord', 1, 'Indoor'),
('EyeBallBaby', 'Cat', 'Lady', 1, 'Indoor'),
('SmudgeSkellington', 'Cat', 'Lord', 1, 'Indoor'),
('Vash', 'Dog', 'Lady', 14, 'Indoor'),
('LeeLooPugDallas', 'Dog', 'Lady', 12, 'Indoor'),
('FertileMyrtle', 'Cat', 'Lady', 5, 'Outdoor'),
('GingerSnap', 'Cat', 'Lord', 2, 'Outdoor'),
('Pastel', 'Cat', 'Lady', 1, 'Outdoor'),
('MiniMe', 'Cat', 'Lord', 1, 'Outdoor'),
('Blondie', 'Cat', 'Lord', 3, 'Outdoor'),
('BigFella', 'Cat', 'TheLord', 7, 'Outdoor'),
('Menace', 'Cat', 'Lord', 4, 'Outdoor'),
('MarbleSwirl', 'Cat', 'Lady', 1, 'Outdoor'),
('MoostashieLeigh', 'Cat', 'Lady', 3, 'Outdoor'),
('Trigger', 'Dog', 'Lord', 14, 'Outdoor'),
('Duke', 'Dog', 'Lord', 12, 'Outdoor');

Insert Into [dbo].[people] (name, relationship, gender, age)
Values
('Tiberius', 'HomeOwner', 'Male', 65),
('Tyler', 'Nephew', 'Male', 33),
('Taylor', 'Niece', 'Female', 15),
('Sleigh', 'HouseholdManager', 'Female', 58);

Insert Into [dbo].[appointments] (name, appointment_date, duration_minutes, appointment_type, appointment_location, appointment_cost)
Values
('RonaldBWeasley', '2026-09-02', 30, 'Vet Checkup', 'All Creatures Clinic', 95.00),
('Trigger', '2026-09-02', 45, 'Vet Checkup', 'All Creatures Clinic', 95.00),
('FrankieBlueEyes', '2026-09-10', 90, 'Vet Checkup', 'All Creatures Clinic', 250.00),
('Mr.Miyagi', '2026-09-10', 30, 'Vet Checkup', 'All Creatures Clinic', 95.00),
('HermoineJGranger', '2026-09-12', 45, 'Vet Checkup', 'All Creatures Clinic', 50.00),
('Taylor', '2026-09-13', 90, 'Dentist Visit', 'Tooth Palace', 125.00),
('Tyler', '2026-09-13', 120, 'Dentist Visit', 'Tooth Palace', 350.00);




