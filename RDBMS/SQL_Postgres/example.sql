CREATE TABLE example(
    student_id PRIMARY KEY,NOT NULL
    first_name VARCHAR(50),NOT NULL
    last_name VARCHAR(50),NOT NULL
    date_of_birth DATE,NOT NULL
    email VARCHAR(100),NOT  NULL
    phone_number VARCHAR(15),
)
INSERT INTO students(student_id, first_name, last_name, date_of_birth, email, phone_number)

VALUES (
    1, 'John', 'Doe', '2000-01-01', 'john.doe@example.com', '1234567890'
)