CREATE DATABASE CarConnect;
USE CarConnect;

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(255),
    Address VARCHAR(255),
    Username VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    RegistrationDate VARCHAR(255)
);

CREATE TABLE Vehicle (
    VehicleID INT PRIMARY KEY AUTO_INCREMENT,
    Model VARCHAR(255),
    Make VARCHAR(255),
    Year VARCHAR(255),
    Color VARCHAR(255),
    RegistrationNumber VARCHAR(255) UNIQUE,
    Availability BOOLEAN,
    DailyRate DOUBLE
);

CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    VehicleID INT,
    StartDate VARCHAR(255),
    EndDate VARCHAR(255),
    TotalCost DOUBLE,
    Status VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

CREATE TABLE Admin (
    AdminID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(255),
    Username VARCHAR(255),
    Password VARCHAR(255),
    Role VARCHAR(255),
    JoinDate VARCHAR(255)
);

INSERT INTO Customer (FirstName, LastName, Email, PhoneNumber, Address, Username, Password, RegistrationDate)
VALUES
('Kavya', 'Kaja', 'kavya@gmail.com', '9550208924', '3-24/1, Main road, Bhimavaram', 'kavya_kaja', 'Kavya@123', '2023-01-16'),
('Ramya', 'Gandi', 'ramya@gmail.com', '9876543210', '2-26/1, Main road, Tadepalli', 'ramya_gandi', 'Ramya@123', '2023-04-26'),
('Anjani', 'Mantena', 'anjani@gmail.com', '9948725666', '3-21/4, Main road, Guntur', 'anjani_mantena', 'Anjani@123', '2023-03-05'),
('Raju', 'Ganta', 'raju@gmail.com', '9848572349', '1-31/2, Main road, Eluru', 'raju_ganta', 'Raju@123', '2023-05-08'),
('Ravi', 'Gowda', 'ravi@gmail.com', '8512658799', '4-28/4, Main road, Tanuku', 'ravi-gowda', 'Ravi@123', '2023-09-20');

SELECT * FROM Customer;

INSERT INTO Vehicle (Model, Make, Year, Color, RegistrationNumber, Availability, DailyRate)
VALUES
('Compact', 'Honda', 2023, 'Silver', 'DEF456', 0, 140),
('Truck', 'Chevrolet', 2022, 'Black', 'GHI789', 1, 190),
('Convertible', 'BMW', 2021, 'White', 'JKL012', 1, 180),
('Hatchback', 'Volkswagen', 2023, 'Green', 'MNO345', 1, 150),
('Sedan', 'Nissan', 2022, 'Gray', 'PQR678', 0, 160);

SELECT * FROM Vehicle;

INSERT INTO Reservation (CustomerID, VehicleID, StartDate, EndDate, TotalCost, Status)
VALUES
(3, 5, '2023-02-01 09:30:00', '2023-02-03 17:45:00', 220, 'Confirmed'),
(4, 5, '2023-02-10 14:00:00', '2023-02-12 12:30:00', 280, 'Pending'),
(5, 1, '2023-02-18 11:45:00', '2023-02-20 19:00:00', 295, 'Confirmed'),
(1, 5, '2023-02-22 08:15:00', '2023-02-25 16:30:00', 210, 'Pending'),
(2, 1, '2023-03-05 13:30:00', '2023-03-08 10:45:00', 230, 'Confirmed');

SELECT * FROM Reservation;

INSERT INTO Admin (FirstName, LastName, Email, PhoneNumber, Username, Password, Role, JoinDate)
VALUES
('Surya', 'Parimi', 'surya@123', '9913426487', 'surya_parimi', 'Surya@123', 'SuperAdmin', '2023-01-16'),
('Mary', 'Katta', 'mary@123', '9243567243', 'mary_katta', 'Mary@123', 'Admin', '2023-03-11'),
('Chaya', 'Mavuri', 'chaya@123', '8976541234', 'chaya_mavuri', 'Chaya@123', 'FleetManager', '2023-11-20'),
('Rohan', 'Dasari', 'rohan@123', '7089234567', 'rohan_dasari', 'Rohan@123', 'SuperAdmin', '2023-09-21'),
('Pooja', 'Jasthi', 'pooja@123', '8745235467', 'pooja_jasthi', 'Pooja@123', 'Admin', '2023-08-06');

SELECT * FROM Admin;

DROP TABLE Admin;
DROP TABLE Customer;
DROP TABLE Vehicle;
DROP TABLE Reservation;