# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people_roles;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int,
    primary key(skills_id),
    skills_name VARCHAR(255),
    skills_description VARCHAR(4096),
    skills_tag VARCHAR(255),
    skills_url VARCHAR(255),
    skills_time_commitment VARCHAR(255)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (1, 'Breathing', 'Can inhale oxygen and exhale carbon dioxide', 'Skill 1', 'wikipedia.org/wiki/Breathing', '0 seconds');
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (2, 'Nepotism', 'They worked hard to be born this way', 'Skill 2', 'wikipedia.org/wiki/Nepotism', 'Either none or in your next life');
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (3, 'Database Design', 'This one is a bit meta, huh?', 'Skill 3', 'wikipedia.org/wiki/Database', '3 credit hours');
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (4, 'Mundane Witchcraft', 'These people always plug a usb in correctly on the first try', 'Skill 4', 'wikipedia.org/wiki/Witchcraft', '1 eye of newt');
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (5, 'Tax "Experts"', 'They have yet to be caught for their crimes', 'Skill 5', 'wikipedia.org/wiki/Tax_evasion', '1099 hours');
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (6, 'Juggling', 'Is really bad at dropping things', 'Skill 6', 'wikipedia.org/wiki/Juggling', '20 hours');
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (7, 'Common Sense', 'Seemingly Uncommon', 'Skill 7', 'wikipedia.org/wiki/Common_sense', 'Several decades');
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES (8, 'Gaslighting', 'There is actually no skill number 8', 'Skill 8', 'wikipedia.org/wiki/Gaslighting', 'Several years');

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int,
    primary key(people_id),
    people_first_name VARCHAR(255),
    people_last_name VARCHAR(255) not NULL,
    people_email VARCHAR(255),
    people_linkedin_url VARCHAR(255),
    people_headshot_url VARCHAR(255),
    people_discord_handle VARCHAR(255),
    people_brief_bio VARCHAR(4096),
    people_date_joined DATE
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.\
# Other fields are for you to assign.

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (1, 'John Leonard ', 'Person 1', 'jdleonard@vcu.edu', 'linkedin.com/in/johndleonard/', 'tinyurl.com/mvcbvac3', 'jleonard99', 'Cool professor at VCU', '2023-06-01');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (2, 'Kevin', 'Person 2', 'kevin@gmail.com', 'linkedin.com/in/kevin', 'tinyurl.com/c6n2t82c', 'kevin1', 'It is Kevin', '1901-09-21');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (3, 'Frederick Database', 'Person 3', 'f.database@aol.com', 'linkedin.com/in/fredrickdatabse', 'tinyurl.com/4fjj8z2r', 'N/A', 'Owner of The Fredick Database Emporium', '1709-12-25');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (4, 'Threekids Inatrenchcoat', 'Person 4', 'normaladult@yahoo.finance', 'linkedin.com/in/realactuallyperson', 'tinyurl.com/3rc557mb', 'fortnitefan2012', 'Commonly seen buying tickets to R-rated movies', '2022-04-01');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (5, 'Jennifer Database', 'Person 5', 'jendata@protonmail.com', 'linkedin.com/in/jdata', 'tinyurl.com/5n8sc65p', 'Jdata', 'Daughter of the inventor of the database, Frederick Database', '2023-01-03');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (6, 'Freddie Database Jr', 'Person 6', 'FDJ@email.biz', 'linkedin.com/in/fredd', 'tinyurl.com/4h5wuem3', 'xXx_FredMaster_xXx', 'Son of database magnate Frederick Database', '2023-01-02');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (7, 'John', 'Person 7', 'john7@email.com', 'linkedin.com/in/john7', 'example.com/headshot7.jpg', 'john7#1234', 'Experienced software developer with a strong background in AI', '2023-01-07');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (8, 'Emma', 'Person 8', 'emma8@email.com', 'linkedin.com/in/emma8', 'example.com/headshot8.jpg', 'emma8#5678', 'Marketing specialist with over 10 years in digital marketing', '2023-02-08');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (9, 'Alex', 'Person 9', 'alex9@email.com', 'linkedin.com/in/alex9', 'example.com/headshot9.jpg', 'alex9#9101', 'Finance professional with expertise in portfolio management', '2023-03-09');
INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES (10, 'Sara', 'Person 10', 'sara10@email.com', 'www.linkedin.com/in/sara10', 'example.com/headshot10.jpg', 'sara10#1112', 'Project manager with a focus on tech startups', '2023-04-10');



# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    peopleskills_id int AUTO_INCREMENT,
    PRIMARY KEY(peopleskills_id),
    skills_id INT,
    people_id INT,
    peopleskills_date_acquired DATE,
    FOREIGN KEY (skills_id) REFERENCES skills(skills_id) ON DELETE CASCADE,
    FOREIGN KEY (people_id) REFERENCES people(people_id) ON DELETE CASCADE
);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (1, 1, 1, '2023-01-01'), (2, 3, 1, '2023-01-02'), (3, 6, 1, '2023-01-03');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (4, 3, 2, '2023-01-04'), (5, 4, 2, '2023-01-05'), (6, 5, 2, '2023-01-06');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (7, 1, 3, '2023-01-07'), (8, 5, 3, '2023-01-08');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (9, NULL, 4, NULL);
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (10, 3, 5, '2023-01-09'), (11, 6, 5, '2023-01-10');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (12, 2, 6, '2023-01-11'), (13, 3, 6, '2023-01-12'), (14, 4, 6, '2023-01-13');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (15, 3, 7, '2023-01-14'), (16, 5, 7, '2023-01-15'), (17, 6, 7, '2023-01-16');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (18, 1, 8, '2023-01-17'), (19, 3, 8, '2023-01-18'), (20, 5, 8, '2023-01-19'), (21, 6, 8, '2023-01-20');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (22, 2, 9, '2023-01-21'), (23, 5, 9, '2023-01-22'), (24, 6, 9, '2023-01-23');
INSERT INTO peopleskills (peopleskills_id, skills_id, people_id, peopleskills_date_acquired) VALUES (25, 1, 10, '2023-01-24'), (26, 4, 10, '2023-01-25'), (27, 5, 10, '2023-01-26');

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    role_id int,
    primary key(role_id),
    role_name VARCHAR(255),
    role_sort_priority INT
);

# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (role_id, role_name, role_sort_priority) VALUES (1, 'Designer', 10);
INSERT INTO roles (role_id, role_name, role_sort_priority) VALUES (2, 'Developer', 20);
INSERT INTO roles (role_id, role_name, role_sort_priority) VALUES (3, 'Recruit', 30);
INSERT INTO roles (role_id, role_name, role_sort_priority) VALUES (4, 'Team Lead', 40);
INSERT INTO roles (role_id, role_name, role_sort_priority) VALUES (5, 'Boss', 50);
INSERT INTO roles (role_id, role_name, role_sort_priority) VALUES (6, 'Mentor', 60);

# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE people_roles (
    peopleroles_id INT AUTO_INCREMENT, 
    PRIMARY KEY(peopleroles_id),
    people_id INT,
    role_id INT,
    peopleroles_date_role_acquired DATE,
    FOREIGN KEY (people_id) REFERENCES people(people_id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles(role_id) ON DELETE CASCADE
);

# Section 11
# Populate peopleroles
# Person 1 is Developer
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# Person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (1, 1, 2, '2023-01-01');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (2, 2, 5, '2023-01-02'), (3, 2, 6, '2023-01-013');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (4, 3, 2, '2023-01-04'), (5, 3, 4, '2023-01-05');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (6, 4, 3, '2023-01-06');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (7, 5, 3, '2023-01-07');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (8, 6, 2, '2023-01-08'), (9, 6, 1, '2023-01-09');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (10, 7, 1, '2023-01-10');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (11, 8, 1, '2023-01-11'), (12, 8, 4, '2023-01-11');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (13, 9, 2, '2023-01-13');
INSERT INTO people_roles (peopleroles_id, people_id, role_id, peopleroles_date_role_acquired) VALUES (14, 10, 2, '2023-01-14'), (15, 10, 1, '2023-01-15');


