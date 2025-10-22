CREATE TABLE MeterReading (
    MeterReadingID INT PRIMARY KEY,
    CustomerID INT,
    ReadingDate DATE,
    ReadingTime TIMESTAMP,
    MeterReading DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);