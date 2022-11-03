CREATE TABLE IF NOT EXISTS Magazines (
    Magazine_ID int NOT NULL,
    Name char(127) NOT NULL,
    Publisher char(255) NOT NULL,
    PRIMARY KEY (Magazine_ID)
);
CREATE TABLE IF NOT EXISTS Rubricator (
    Code char(8) NOT NULL,
    Category_Name char(127) NOT NULL,
    PRIMARY KEY (Code)
);
CREATE TABLE IF NOT EXISTS Releases(
    Release_ID int NOT NULL,
    Magazine_ID int NOT NULL,
    Year numeric(4, 0),
    Issue_Number smallint NOT NULL,
    PRIMARY KEY (Release_ID)
);
CREATE TABLE IF NOT EXISTS Publications(
    Publication_ID int NOT NULL,
    Release_ID int NOT NULL, 
    Rubricator_Code char(8) NOT NULL,
    Author char(127), 
    Article char(255),
    PRIMARY KEY (Publication_ID)
);