DROP TABLE IF EXISTS category cascade;

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY NOT NULL,
    category VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS subcategory cascade;

CREATE TABLE subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS contacts cascade;

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(80) NOT NULL
);

DROP TABLE IF EXISTS campaign cascade;

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
		FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(80) NOT NULL,
	description VARCHAR(150) NOT NULL,
	goal INT NOT NULL,
	pledged INT NOT NULL,
	outcome VARCHAR(15) NOT NULL,
	backers_count INT NOT NULL,
    country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
		FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(20) NOT NULL,
		FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

















