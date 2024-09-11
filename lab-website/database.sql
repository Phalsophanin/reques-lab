CREATE TABLE users (
    ID INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    subject VARCHAR(100),
    photo VARCHAR(255),
    address VARCHAR(255),
    position VARCHAR(20),
    type ENUM('user', 'admin'),
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    date_time DATETIME
);

CREATE TABLE feedback (
    ID INT PRIMARY KEY,
    user_id INT,
    comments TEXT,
    date_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(ID)
);

CREATE TABLE codes (
    ID INT PRIMARY KEY,

    email VARCHAR(100),
    code VARCHAR(100),
    expire int (11)
);

CREATE TABLE lab (
    ID INT PRIMARY KEY,
    name_lab VARCHAR(100),
    time TIME
);

CREATE TABLE session (
    ID INT PRIMARY KEY,
    sessions VARCHAR(100),
    number_Sessions INT,
    time TIME
);

CREATE TABLE information (
    ID INT PRIMARY KEY,
    user_id INT,
    date DATE,
    lab_id INT,
    generation VARCHAR(50),
    session_id INT,
    app VARCHAR(100),
    number_students INT,
    subject VARCHAR(100),
    other TEXT,
    FOREIGN KEY (user_id) REFERENCES users(ID),
    FOREIGN KEY (lab_id) REFERENCES lab(ID),
    FOREIGN KEY (session_id) REFERENCES session(ID)
);
