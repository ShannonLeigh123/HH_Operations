CREATE DATABASE HouseholdOperations;
GO

USE HouseholdOperations;
GO

CREATE TABLE people (
    person_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(56) NOT NULL,
    relationship VARCHAR(25)
);

CREATE TABLE pets (
    pet_id INT IDENTITY(1,1) PRIMARY KEY,
    pet_name VARCHAR(56) NOT NULL,
    species VARCHAR(25)
);

CREATE TABLE appointments (
    appointment_id INT IDENTITY(1,1) PRIMARY KEY,
    person_id INT NULL,
    pet_id INT NULL,
    appointment_date DATE NOT NULL,
    duration_minutes INT,
    appointment_type VARCHAR(50),

    FOREIGN KEY (person_id)
        REFERENCES people(person_id),

    FOREIGN KEY (pet_id)
        REFERENCES pets(pet_id)
);

CREATE TABLE expenses (
    expense_id INT IDENTITY(1,1) PRIMARY KEY,
    expense_date DATE NOT NULL,
    category VARCHAR(25),
    amount MONEY,
    vendor VARCHAR(100)
);

CREATE TABLE tasks (
    task_id INT IDENTITY(1,1) PRIMARY KEY,
    task_date DATE NOT NULL,
    category VARCHAR(25),
    duration_minutes INT,
    task_description VARCHAR(255),
    task_status VARCHAR(20)
);