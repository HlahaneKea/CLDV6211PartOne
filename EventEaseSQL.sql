--DATABASE
USE master
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'EventEaseP1')
DROP DATABASE EventEaseP1
CREATE DATABASE EventEaseP1

USE EventEaseP1

-- VENUE TABLE
CREATE TABLE Venue (
    VenueId INT PRIMARY KEY IDENTITY(1,1),
    VenueName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(150),
    Capacity INT,
    ImageUrl NVARCHAR(255)
);


-- EVENT TABLE
CREATE TABLE Event (
    EventId INT PRIMARY KEY IDENTITY(1,1),
    EventName NVARCHAR(100) NOT NULL,
    EventDate DATE NOT NULL,
    Description NVARCHAR(MAX),
    ImageUrl NVARCHAR(255),
    VenueId INT NOT NULL,
    FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);


-- BOOKING TABLE
CREATE TABLE Booking (
    BookingId INT PRIMARY KEY IDENTITY(1,1),
    BookingDate DATE NOT NULL,
    VenueId INT NOT NULL,
    EventId INT NOT NULL,
    FOREIGN KEY (VenueId) REFERENCES Venue(VenueId),
    FOREIGN KEY (EventId) REFERENCES Event(EventId)
);



--table manipulation
SELECT *
FROM Venue
SELECT *
FROM Booking
SELECT *
FROM Event
