-- Create a table to store venue information
CREATE TABLE Venues (
    VenueID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Capacity INT NOT NULL
);

-- Create a table to store user reservations
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    VenueID INT NOT NULL,
    UserID INT NOT NULL, -- Assuming you have a separate table for user information
    Date DATE NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    FOREIGN KEY (VenueID) REFERENCES Venues(VenueID)
);
