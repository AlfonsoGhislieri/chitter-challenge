CREATE TABLE peeps (id SERIAL PRIMARY KEY, message VARCHAR(280), timestamp VARCHAR, user_id int REFERENCES users(id));
CREATE TABLE users (id SERIAL PRIMARY KEY, email VARCHAR(60), password VARCHAR(160), username VARCHAR(60), name VARCHAR(60));