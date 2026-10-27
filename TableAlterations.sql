/* Household Operations Database Schema Update
   This script alters existing tables in the HouseholdOperations database to add new columns for enhanced tracking of appointments, expenses, and tasks.
   The changes include adding gender and age columns to the people and pets tables, as well as a task_frequency column to the tasks table. 
   These additions will allow for more detailed data collection and analysis within the household operations context. */


Alter Table [dbo].[people]
  Add
      gender varchar(10) Null,
      age int Null;

Alter Table [dbo].[pets]
  Add
      gender varchar(10) Null,
      age int Null,
      pet_location varchar(10) Null;

Alter Table [dbo].[tasks]
  Add
      task_frequency varchar(25) Null;

Alter Table [dbo].[appointments]
  Add
      appointment_location varchar(50) Null,
      appointment_cost money Null,
      name varchar(50) Null;

/* Changed pet_name to name */      
EXEC sp_rename '[dbo].[pets].[pet_name]', 'name', 'COLUMN';
  
