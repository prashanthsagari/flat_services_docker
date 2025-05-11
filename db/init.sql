create database reviews_db;
use reviews_db;
CREATE TABLE IF NOT EXISTS reviews (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    reviewer_id BIGINT NOT NULL,
    target_type VARCHAR(255) NOT NULL, -- flat, flatmate, landlord
    target_id BIGINT NOT NULL,
    comments TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Inserting sample review 1
INSERT INTO reviews (reviewer_id, target_type, target_id, comments, created_at) 
VALUES (1, 'flat', 101, 'Great flat with amazing amenities. Highly recommended!', NOW());

-- Inserting sample review 2
INSERT INTO reviews (reviewer_id, target_type, target_id, comments, created_at) 
VALUES (2, 'flatmate', 202, 'Really pleasant to live with. Keeps everything clean and tidy.', NOW());

-- Inserting sample review 3
INSERT INTO reviews (reviewer_id, target_type, target_id, comments, created_at) 
VALUES (3, 'landlord', 303, 'Very responsive and responsible landlord. Would rent again!', NOW());

-- Inserting sample review 4
INSERT INTO reviews (reviewer_id, target_type, target_id, comments, created_at) 
VALUES (4, 'flat', 404, 'The flat was okay, but the location was noisy at night.', NOW());



create database favorite_db;
use favorite_db;

CREATE TABLE IF NOT EXISTS user_flat_favorites (
    id BIGINT auto_increment PRIMARY KEY,
    user_id BIGINT NOT NULL,
    flat_id BIGINT NOT NULL,
    favorited_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);


INSERT INTO user_flat_favorites (user_id, flat_id) VALUES (101, 501);
INSERT INTO user_flat_favorites (user_id, flat_id) VALUES (102, 502);
INSERT INTO user_flat_favorites (user_id, flat_id) VALUES (103, 503);
INSERT INTO user_flat_favorites (user_id, flat_id) VALUES (101, 504);
INSERT INTO user_flat_favorites (user_id, flat_id) VALUES (102, 505);
commit;



-- create database flatbuddy;
-- use flatbuddy;

-- INSERT INTO user_table (company_name, contact_number, education, email_id, employment_status, gender, home_town, password, role, userfname, userlname)
-- VALUES 
-- ('Infosys', 9876543210, 'B.Tech', 'raj.kumar@example.com', b'1', 'Male', 'Hyderabad', 'raj123', 'USER', 'Raj', 'Kumar');

-- INSERT INTO user_table (company_name, contact_number, education, email_id, employment_status, gender, home_town, password, role, userfname, userlname)
-- VALUES 
-- ('TCS', 9123456789, 'MBA', 'anita.mehta@example.com', b'0', 'Female', 'Delhi', 'anita@321', 'ADMIN', 'Anita', 'Mehta');

-- INSERT INTO user_table (company_name, contact_number, education, email_id, employment_status, gender, home_town, password, role, userfname, userlname)
-- VALUES 
-- ('Wipro', 9988776655, 'MCA', 'suresh.nair@example.com', b'1', 'Male', 'Kochi', 'suresh456', 'USER', 'Suresh', 'Nair');

-- INSERT INTO user_table (company_name, contact_number, education, email_id, employment_status, gender, home_town, password, role, userfname, userlname)
-- VALUES 
-- ('Accenture', 9090909090, 'B.Sc', 'priya.iyer@example.com', b'1', 'Female', 'Chennai', 'priya789', 'USER', 'Priya', 'Iyer');
