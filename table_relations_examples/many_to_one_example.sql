USE examples;

CREATE TABLE mountains(
  mountain_id INT PRIMARY KEY,
  mountain_name VARCHAR(50)
);

CREATE TABLE peaks(
  peak_id INT PRIMARY KEY,
  mountain_id INT,
  CONSTRAINT fk_peaks_mountains 
  FOREIGN KEY (mountain_id)
  REFERENCES mountains(mountain_id)
  );

