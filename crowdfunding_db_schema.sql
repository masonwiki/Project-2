CREATE TABLE Category (
    category_id varchar(50) NOT NULL,
    category varchar(50) NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
    subcategory_id varchar(50) NOT NULL,
    subcategory varchar(50) NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
    contact_id integer NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
    cf_id integer NOT NULL,
    contact_id integer NOT NULL,
    company_name varchar(50) NOT NULL,
    description text NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar(50) NOT NULL,
    backers_count integer NOT NULL,
    country varchar(50) NOT NULL,
    currency varchar(50) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(50) NOT NULL,
    subcategory_id varchar(50) NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (cf_id),
    CONSTRAINT fk_Campaign_category_id FOREIGN KEY (category_id) REFERENCES Category (category_id),
    CONSTRAINT fk_Campaign_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id),
    CONSTRAINT fk_Campaign_contact_id FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id)
);