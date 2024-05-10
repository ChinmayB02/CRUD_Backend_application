CREATE DATABASE IF NOT EXISTS AssistantManagement;

USE AssistantManagement;

CREATE TABLE IF NOT EXISTS Assistants (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    mobile VARCHAR(20),
    email VARCHAR(100),
    salary DECIMAL(10, 2),
    city VARCHAR(100),
    country VARCHAR(100),
    department VARCHAR(100),
    role VARCHAR(100)
);
INSERT INTO Assistants (name, mobile, email, salary, city, country, department, role)
VALUES 
    ('John Doe', '+1234567890', 'john.doe@example.com', 50000.00, 'New York', 'USA', 'Administration', 'Administrative Assistant'),
    ('Jane Smith', '+1987654321', 'jane.smith@example.com', 45000.00, 'Los Angeles', 'USA', 'Marketing', 'Marketing Assistant'),
    ('Michael Johnson', '+1122334455', 'michael.johnson@example.com', 55000.00, 'Chicago', 'USA', 'Finance', 'Finance Assistant'),
    ('Emily Brown', '+1555666777', 'emily.brown@example.com', 48000.00, 'London', 'UK', 'Human Resources', 'HR Assistant'),
    ('David Wilson', '+1888777666', 'david.wilson@example.com', 52000.00, 'Houston', 'USA', 'Sales', 'Sales Assistant'),
    ('Sarah Martinez', '+1666999888', 'sarah.martinez@example.com', 47000.00, 'Sydney', 'Australia', 'Customer Service', 'Customer Service Assistant'),
    ('Christopher Taylor', '+1444555666', 'christopher.taylor@example.com', 51000.00, 'Toronto', 'Canada', 'IT', 'IT Assistant'),
    ('Emma Garcia', '+1222333444', 'emma.garcia@example.com', 49000.00, 'Paris', 'France', 'Operations', 'Operations Assistant'),
    ('Ryan Anderson', '+1333444555', 'ryan.anderson@example.com', 53000.00, 'Berlin', 'Germany', 'Research and Development', 'R&D Assistant'),
    ('Olivia Hernandez', '+1777888999', 'olivia.hernandez@example.com', 46000.00, 'Tokyo', 'Japan', 'Quality Assurance', 'QA Assistant'),
    ('William Lopez', '+1555333777', 'william.lopez@example.com', 54000.00, 'Madrid', 'Spain', 'Legal', 'Legal Assistant'),
    ('Ava Gonzales', '+1999222333', 'ava.gonzales@example.com', 48000.00, 'Mexico City', 'Mexico', 'Public Relations', 'PR Assistant'),
    ('Ethan Perez', '+1888999111', 'ethan.perez@example.com', 52000.00, 'São Paulo', 'Brazil', 'Engineering', 'Engineering Assistant'),
    ('Mia Torres', '+1444666777', 'mia.torres@example.com', 47000.00, 'Moscow', 'Russia', 'Design', 'Design Assistant'),
    ('Alexander Flores', '+1333999222', 'alexander.flores@example.com', 51000.00, 'Seoul', 'South Korea', 'Manufacturing', 'Manufacturing Assistant'),
    ('Sophia Kim', '+1666888999', 'sophia.kim@example.com', 49000.00, 'Mumbai', 'India', 'Logistics', 'Logistics Assistant'),
    ('James Lee', '+1888333444', 'james.lee@example.com', 53000.00, 'Shanghai', 'China', 'Education', 'Education Assistant'),
    ('Charlotte Singh', '+1222444555', 'charlotte.singh@example.com', 46000.00, 'Cairo', 'Egypt', 'Healthcare', 'Healthcare Assistant'),
    ('Benjamin Patel', '+1777555666', 'benjamin.patel@example.com', 55000.00, 'Buenos Aires', 'Argentina', 'Media', 'Media Assistant'),
    ('Amelia Khan', '+1555111222', 'amelia.khan@example.com', 48000.00, 'Johannesburg', 'South Africa', 'Hospitality', 'Hospitality Assistant'),
    ('Jacob Ali', '+1999444777', 'jacob.ali@example.com', 52000.00, 'Bangkok', 'Thailand', 'Fashion', 'Fashion Assistant'),
    ('Harper Wong', '+1444777888', 'harper.wong@example.com', 47000.00, 'Singapore', 'Singapore', 'Architecture', 'Architecture Assistant'),
    ('Evelyn Nguyen', '+1333222111', 'evelyn.nguyen@example.com', 51000.00, 'Dubai', 'UAE', 'Nonprofit', 'Nonprofit Assistant'),
    ('Michael Brown', '+1666555444', 'michael.brown@example.com', 49000.00, 'Rome', 'Italy', 'Government', 'Government Assistant'),
    ('Abigail O\'Connor', '+1888666555', 'abigail.oconnor@example.com', 53000.00, 'Athens', 'Greece', 'Consulting', 'Consulting Assistant'),
    ('Logan Murphy', '+1222777888', 'logan.murphy@example.com', 46000.00, 'Stockholm', 'Sweden', 'Fashion', 'Fashion Assistant'),
    ('Sofia Rossi', '+1777333222', 'sofia.rossi@example.com', 55000.00, 'Oslo', 'Norway', 'Research', 'Research Assistant'),
    ('Daniel Fischer', '+1555444333', 'daniel.fischer@example.com', 48000.00, 'Helsinki', 'Finland', 'Entertainment', 'Entertainment Assistant'),
    ('Madison Weber', '+1999777666', 'madison.weber@example.com', 52000.00, 'Vienna', 'Austria', 'Real Estate', 'Real Estate Assistant');
select*from assistants;
