/* Household Operations Monthly Database - SQL Script
   This script inserts values into the tables.
*/

/* Insert sample data into the pet table */
INSERT INTO [dbo].[pets] (name, species, gender, age, pet_location)
VALUES
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

/* Insert values for people table */
INSERT INTO [dbo].[people] (name, relationship, gender, age)
VALUES
	('Tiberius', 'HomeOwner', 'Male', 65),
	('Tyler', 'Nephew', 'Male', 33),
	('Taylor', 'Niece', 'Female', 15),
	('Sleigh', 'HouseholdManager', 'Female', 58);

/* Insert values for appointments table */
INSERT INTO [dbo].[appointments] (name, appointment_date, duration_minutes, appointment_type, appointment_location, appointment_cost)
VALUES
	('RonaldBWeasley', '2026-09-02', 30, 'Vet Checkup', 'All Creatures Clinic', 95.00),
	('Trigger', '2026-09-02', 45, 'Vet Checkup', 'All Creatures Clinic', 95.00),
	('FrankieBlueEyes', '2026-09-10', 90, 'Vet Checkup', 'All Creatures Clinic', 250.00),
	('Mr.Miyagi', '2026-09-10', 30, 'Vet Checkup', 'All Creatures Clinic', 95.00),
	('HermoineJGranger', '2026-09-12', 45, 'Vet Checkup', 'All Creatures Clinic', 50.00),
	('Taylor', '2026-09-13', 90, 'Dentist Visit', 'Tooth Palace', 125.00),
	('Tyler', '2026-09-13', 120, 'Dentist Visit', 'Tooth Palace', 350.00);

/* Get total cost of pet medical and dental costs */
SELECT SUM([appointment_cost]) as 'Total Cost'
FROM [dbo].[appointments]
WHERE [appointment_location] = 'All Creatures Clinic'; /* 585.00 */

SELECT SUM([appointment_cost]) as 'Dental Costs'
FROM [dbo].[appointments]
WHERE [appointment_location] = 'Tooth Palace'; /* 475.00 */

/* Insert Values for expenses table */
INSERT INTO [dbo].[expenses] ([category], [expense_date], [vendor], [amount])
VALUES
	('Mortgage', '2026-09-01', 'Credit Union', 650.73),
	('Electric', '2026-09-01', 'Power Company', 355.55),
	('Gas', '2026-09-10', 'City Gas', 85.22),
	('Water', '2026-09-12', 'City Water', 75.89),
	('Phone', '2026-09-15', 'Phone Company', 150.50),
	('Internet', '2026-09-17', 'Connected Company', 155.78),
	('Medical Insurance', '2026-09-17', 'Money Company', 225.00),
	('Home/Life Goods', '2026-09-20', 'Mamzon', 500.00),
	('Grocery', '2026-09-22', 'Grocery Store', 400.00),
	('Pet Medical', '2026-09-25', 'All Creatures Clinic', 585.00),
	('Pet Food','2026-09-25', 'Mamzon', 400.00),
	('Pet Products', '2026-09-25', 'Mamzon', 200.00);

INSERT INTO [dbo].[expenses] ([category], [expense_date], [vendor], [amount])
VALUES
	('Dental Costs', '2026-09-25', 'Tooth Palace', 475.00);

/* Alter table expenses */
Alter Table [dbo].[tasks]
Drop Column [task_date];

/* Insert values into tasks table */
INSERT INTO [dbo].[tasks] ([category], [task_frequency], [task_description], [task_status], [duration_minutes])
VALUES
	('Feed Pets', 'Twice Daily', 'Prepare bowls of food/water for outdoor/indoor pets. Prepare special bowls for kittens', 'Done', 60),
	('Clean Cat Boxes', 'Daily', 'Scoop the box, clean pee-pee of any surfaces, add litter if necessary, shack off mats & lysol them and sweep the floor', 'Done', 45),
	('Laundry', 'Daily', 'Sort and wash 2-3 loads of laundry a day', 'Done', 180),
	('Clean Kitchen', 'Daily', 'Wash dishes, clean counters, sweep/swiffer wet mop', 'Done', 60),
	('Dust/Vacuum/Mop', 'Weekly', 'Dust, Vacuum and Mop the whole house. Knick Knacks to the floor', 'Done', 240),
	('Clean Bathrooms', 'Weekly', 'Clean mirrors, sink, bathtub, toilet, sweep and mop floors','Done', 60), 
	('Run Errands', 'Weekly', 'Grocery Shop, Pick up dry cleaning/any other necessary items', 'Done', 150),
	('Pay Bills', 'Twice Monthly', 'Pay upcoming bills and budget if necessary', 'Done', 45),
	('Online Ordering', 'Twice Monthly', 'Take inventory of person/pet/house necessities and order accordingly.', 'Done', 45),
	('Schedule Appointments','As Needed', 'Check calendar for any upcoming events or annual checkups, etc. and schedule accordingly.', 'Done', 10);










