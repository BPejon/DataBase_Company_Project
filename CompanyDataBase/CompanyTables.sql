 CREATE TABLE employee(
    emp_id INT NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birth_date DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT,
    CONSTRAINT pk_employee PRIMARY KEY(emp_id) -- Can't insert Foreign because employee and branch table dont exist yer
 );

 CREATE TABLE branch(
     branch_id INT,
     branch_name VARCHAR(20),
     manager_id INT,
     manager_start_date DATE,
     CONSTRAINT pk_branch PRIMARY KEY(branch_id),
     CONSTRAINT fk_branch FOREIGN KEY(manager_id)
        REFERENCES employee(emp_id)
        ON DELETE SET NULL
 );

--Now we can go ahead and set the foreign keys at employee table
ALTER TABLE employee
ADD CONSTRAINT fk1_employee FOREIGN KEY(super_id)
        REFERENCES employee(emp_id)
        ON DELETE SET NULL;

ALTER TABLE employee
ADD CONSTRAINT fk2_employee FOREIGN KEY(branch_id)
        REFERENCES branch(branch_id)
        ON DELETE CASCADE;

--Continue creating the other Tables
CREATE TABLE client(
    client_id INT NOT NULL,
    client_name VARCHAR(40),
    branch_id INT,
    CONSTRAINT pk_client PRIMARY KEY(client_id),
    CONSTRAINT fk_client FOREIGN KEY(branch_id)
        REFERENCES branch(branch_id)
        ON DELETE SET NULL
); 

CREATE TABLE branch_supplier(
    branch_id INT NOT NULL,
    supplier_name VARCHAR(40) NOT NULL,
    supply_type VARCHAR(40) NOT NULL,
    CONSTRAINT pk_branch_supplier PRIMARY KEY(branch_id,supplier_name),
    CONSTRAINT fk_branch_supplier FOREIGN KEY(branch_id)
        REFERENCES branch(branch_id)
        ON DELETE CASCADE
);

CREATE TABLE works_with(
    emp_id INT NOT NULL,
    client_id INT NOT NULL,
    total_sales INT NOT NULL,
    CONSTRAINT pk_works_with PRIMARY KEY(emp_id, client_id),
    CONSTRAINT fk1_works_with FOREIGN KEY(emp_id)
        REFERENCES employee(emp_id)
        ON DELETE CASCADE,
    CONSTRAINT fk2_works_with FOREIGN KEY(client_id)
        REFERENCES client(client_id)
        ON DELETE CASCADE
);