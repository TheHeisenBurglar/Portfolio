
-- @block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- @block
INSERT INTO Users (name, password)
VALUES (
    'testEstimator',
    'testPass'
);

-- @block
SELECT * FROM Users
WHERE name LIKE '%Estimator';

-- @block
DROP table if exists labels, containers, quotes;
CREATE TABLE labels(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(255) NOT NULL,
    timing float
);

create table containers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(255) NOT NULL,
    size varchar(255) NOT NULL,
    timing float
);
create table quotes (
    id INT AUTO_INCREMENT,
    D365_quote_num varchar(255),
    customer_name varchar(255),
    user_id INT NOT NULL,
    createdAt dateTime,
    updatedAt dateTime,
    primary key (id),
    foreign key (user_id) references users(id)
);

create table quote_lines (
    id INT AUTO_INCREMENT,
    quote_id INT NOT NULL,
    container_id INT NOT NULL,
    label_id INT NOT NULL,
    primary key (id),
    foreign key (quote_id) references quotes(id),
    foreign key (container_id) references containers(id),
    foreign key (label_id) references labels(id)
);
-- @block
DROP table if exists qoutes;

-- @block
select * from users;

-- @block
insert into quotes (D365_quote_num, customer_name, user_id, createdAt, updatedAt)
values (
    'Q200148431', 'Wal-Mart GBS BV', 1, NOW(), NOW()
); 
-- @block
insert into labels (type, timing)
values (
    "shipping", 0.02
);
-- @block
insert into containers (type, size, timing)
values (
    "COW box", "small", 0.13
);
-- @block
insert into quote_lines (quote_id, container_id, label_id)
values (
    1, 1, 1
);

--@block
Select * from quote_lines
left JOIN quotes
on quotes.id = quote_lines.quote_id;

-- @block
select * from users;
-- @block
select * from quotes;
-- @block
select * from lines;
-- @block
select * from labels;
-- @block
select * from containers;