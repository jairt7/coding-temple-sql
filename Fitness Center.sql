CREATE DATABASE fitness_center;
USE fitness_center;
CREATE TABLE Members (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
age INT
);
CREATE TABLE WorkoutSessions (
session_id INT PRIMARY KEY,
member_id INT,
session_date DATE,
session_time VARCHAR(50),
activity VARCHAR(255),
FOREIGN KEY (member_id) REFERENCES Members(id)
);
-- Task 1: SQL Data Insertion
USE fitness_center;
INSERT INTO Members (id, name, age)
VALUES (1, "Yoshikage Kira", 33),
(2, "Hibiki Sakura", 16),
(3, "Mash Burnedead", 16),
(4, "Aurora", 16),
(5, "Forrest Gump", 33),
(6, "Sonic the Hedgehog", 15),
(7, "John Smith", 32),
(8, "Jane Doe", 28);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES (1, 1, "2024-10-18", "9:00", "Sleeping"),
(2, 2, "2024-10-17", "4:00 PM", "Weightlifting"),
(3, 3, "2024-10-17", "4:00 PM", "Weightlifting"),
(4, 4, "2024-10-18", "9:00 PM", "Sleeping"),
(5, 5, "2024-10-19", "10:00 AM", "Treadmill"),
(6, 6, "2024-10-19", "11:00 AM", "Track"),
(7, 7, "2024-10-18", "1:00 PN", "Exercise bike"),
(8, 8, "2024-10-20", "10:00 AM", "Basketball");

-- Task 2: SQL Data Update
UPDATE WorkoutSessions
SET session_time = "5:00 PM"
WHERE member_id = 8;

-- Task 3: SQL Data Deletion
DELETE FROM WorkoutSessions
WHERE member_id = 7;

DELETE FROM Members
WHERE id = 7;