/*--Write a SQL query to split a full name column into first name and last name. 
--Assume the names are separated by a single space.*/

create database name
use name
-- Query to create Table Persons
CREATE TABLE persons (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100)
);

-- Insert data
INSERT INTO persons (full_name) VALUES
('John Doe'),
('Emma Watson'),
('Emily Rose Pattrick'),
('Robert Downey'),
('Chris Evans'),
('Scarlett Johansson');

select full_name,
	SUBSTRING_INDEX(full_name,' ',1) as first_name,
    	SUBSTRING_INDEX(full_name,' ',-1) as first_name
        from persons

--PostgreSQL 
select full_name,split_part(full_name,' ',1),
    split_part(full_name,' ',array_length(string_to_array(full_name,' ')1)) as last_name
  from persons
