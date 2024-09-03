-- account level
create database if not exists snapshot_read;
use snapshot_read;
create table test_snapshot_read (a int);
insert into test_snapshot_read (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from snapshot_read.test_snapshot_read;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (username, email, password) VALUES ('john_doe', 'john@example.com', 'securepassword123');
INSERT INTO users (username, email, password) VALUES ('jane_smith', 'jane.smith@example.com', 'password123'),('alice_jones', 'alice.jones@gmail.com', 'ilovecats'),('bob_brown', 'bob.brown@yahoo.com', 'mysecretpassword'),('charlie_lee', 'charlie.lee@protonmail.ch', 'secure123'),('diana_wilson', 'diana.wilson@outlook.com', 'D1anaPass');
INSERT INTO users (username, email, password) VALUES ('emily_adams', 'emily.adams@icloud.com', 'Em1Ly123'), ('francis_nguyen', 'francis.nguyen@domain.com', 'fNguyenPass'), ('grace_parker', 'grace.parker@server.com', 'G1race123'), ('henry_miller', 'henry.miller@company.org', 'hMillerSecret'), ('isabella_grant', 'isabella.grant@university.edu', 'iGrantPass');

select count(*) from snapshot_read.users;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

INSERT INTO students (name, age) VALUES ('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
INSERT INTO students (name, age) VALUES ('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
INSERT INTO students (name, age) VALUES ('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
INSERT INTO students (name, age) VALUES ('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
INSERT INTO students (name, age) VALUES ('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
INSERT INTO students (name, age) VALUES ('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
INSERT INTO students (name, age) VALUES ('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
INSERT INTO students (name, age) VALUES ('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
INSERT INTO students (name, age) VALUES ('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
INSERT INTO students (name, age) VALUES ('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from snapshot_read.students;

create database if not exists test_snapshot_restore;
use test_snapshot_restore;

create table test_restore (a int);
insert into test_restore (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from test_snapshot_restore.test_restore;

CREATE TABLE test_restore_2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
insert into test_restore_2 (name, age) values('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
insert into test_restore_2 (name, age) values('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
insert into test_restore_2 (name, age) values('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
insert into test_restore_2 (name, age) values('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
insert into test_restore_2 (name, age) values('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
insert into test_restore_2 (name, age) values('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
insert into test_restore_2 (name, age) values('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
insert into test_restore_2 (name, age) values('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
insert into test_restore_2 (name, age) values('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
insert into test_restore_2 (name, age) values('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from test_snapshot_restore.test_restore_2;


CREATE TABLE factories (
    factory_name VARCHAR(255) PRIMARY KEY,
    address TEXT NOT NULL
);

INSERT INTO factories (factory_name, address) VALUES ('Factory A', '123 Main St, Springfield, IL 62701'), ('Factory B', '456 Elm St, Springfield, IL 62702');
INSERT INTO factories (factory_name, address) VALUES ('Factory C', '789 Oak St, Springfield, IL 62703'), ('Factory D', '101 Pine St, Springfield, IL 62704');
INSERT INTO factories (factory_name, address) VALUES ('Factory E', '112 Birch St, Springfield, IL 62705'), ('Factory F', '131 Cedar St, Springfield, IL 62706');
INSERT INTO factories (factory_name, address) VALUES ('Factory G', '151 Maple St, Springfield, IL 62707'), ('Factory H', '171 Walnut St, Springfield, IL 62708');
INSERT INTO factories (factory_name, address) VALUES ('Factory I', '191 Cherry St, Springfield, IL 62709'), ('Factory J', '211 Elm St, Springfield, IL 62710');
INSERT INTO factories (factory_name, address) VALUES ('Factory K', '231 Oak St, Springfield, IL 62711'), ('Factory LLLLLLLLLL1', '251 Pine St, Springfield, IL 62712');
INSERT INTO factories (factory_name, address) VALUES ('Factory M', '271 Birch St, Springfield, IL 62713'), ('Factory N', '291 Cedar St, Springfield, IL 62714');
INSERT INTO factories (factory_name, address) VALUES ('Factory O', '311 Maple St, Springfield, IL 62715'), ('Factory P', '331 Walnut St, Springfield, IL 62716');
INSERT INTO factories (factory_name, address) VALUES ('Factory Q', '351 Cherry St, Springfield, IL 62717'), ('Factory R', '371 Elm St, Springfield, IL 62718');
INSERT INTO factories (factory_name, address) VALUES ('Factory S', '391 Oak St, Springfield, IL 62719'), ('Factory T', '411 Pine St, Springfield, IL 62720');
INSERT INTO factories (factory_name, address) VALUES ('Factory U', '431 Birch St, Springfield, IL 62721'), ('Factory V', '451 Cedar St, Springfield, IL 62722');
INSERT INTO factories (factory_name, address) VALUES ('Factory W', '471 Maple St, Springfield, IL 62723'), ('Factory X', '491 Walnut St, Springfield, IL 62724');
INSERT INTO factories (factory_name, address) VALUES ('Factory Y', '511 Cherry St, Springfield, IL 62725'), ('Factory Z', '531 Elm St, Springfield, IL 62726');
INSERT INTO factories (factory_name, address) VALUES ('Factory AA', '551 Oak St, Springfield, IL 62727'), ('Factory BB', '571 Pine St, Springfield, IL 62728');
INSERT INTO factories (factory_name, address) VALUES ('Factory CC', '591 Birch St, Springfield, IL 62729'), ('Factory DD', '611 Cedar St, Springfield, IL 62730');
INSERT INTO factories (factory_name, address) VALUES ('Factory EE', '631 Maple St, Springfield, IL 62731'), ('Factory FF', '651 Walnut St, Springfield, IL 62732');
INSERT INTO factories (factory_name, address) VALUES ('Factory GG', '671 Cherry St, Springfield, IL 62733'), ('Factory HH', '691 Elm St, Springfield, IL 62734');
INSERT INTO factories (factory_name, address) VALUES ('Factory II', '711 Oak St, Springfield, IL 62735'), ('Factory JJ', '731 Pine St, Springfield, IL 62736');
INSERT INTO factories (factory_name, address) VALUES ('Factory KK', '751 Birch St, Springfield, IL 62737'), ('Factory LL', '771 Cedar St, Springfield, IL 62738');
INSERT INTO factories (factory_name, address) VALUES ('Factory MM', '791 Maple St, Springfield, IL 62739'), ('Factory NN', '811 Walnut St, Springfield, IL 62740');
INSERT INTO factories (factory_name, address) VALUES ('Factory OO', '831 Cherry St, Springfield, IL 62741'), ('Factory PP', '851 Elm St, Springfield, IL 62742');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQ', '871 Oak St, Springfield, IL 62743'), ('Factory RR', '891 Pine St, Springfield, IL 62744');
INSERT INTO factories (factory_name, address) VALUES ('Factory SS', '911 Birch St, Springfield, IL 62745'), ('Factory TT', '931 Cedar St, Springfield, IL 62746');
INSERT INTO factories (factory_name, address) VALUES ('Factory UU', '951 Maple St, Springfield, IL 62747'), ('Factory VV', '971 Walnut St, Springfield, IL 62748');
INSERT INTO factories (factory_name, address) VALUES ('Factory WW', '991 Cherry St, Springfield, IL 62749'), ('Factory XX', '1011 Elm St, Springfield, IL 62750');
INSERT INTO factories (factory_name, address) VALUES ('Factory YY', '1031 Oak St, Springfield, IL 62751'), ('Factory ZZ', '1051 Pine St, Springfield, IL 62752');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAA', '1071 Birch St, Springfield, IL 62753'), ('Factory BBB', '1091 Cedar St, Springfield, IL 62754');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCC', '1111 Maple St, Springfield, IL 62755'), ('Factory DDD', '1131 Walnut St, Springfield, IL 62756');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEE', '1151 Cherry St, Springfield, IL 62757'), ('Factory FFF', '1171 Elm St, Springfield, IL 62758');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGG', '1191 Oak St, Springfield, IL 62759'), ('Factory HHH', '1211 Pine St, Springfield, IL 62760');
INSERT INTO factories (factory_name, address) VALUES ('Factory III', '1231 Birch St, Springfield, IL 62761'), ('Factory JJJ', '1251 Cedar St, Springfield, IL 62762');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1271 Maple St, Springfield, IL 62763'), ('Factory LLLLLLLLLLLLLLL', '1291 Walnut St, Springfield, IL 62764');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMM', '1311 Cherry St, Springfield, IL 62765'), ('Factory NNN', '1331 Elm St, Springfield, IL 62766');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOO', '1351 Oak St, Springfield, IL 62767'), ('Factory PPP', '1371 Pine St, Springfield, IL 62768');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQ', '1391 Birch St, Springfield, IL 62769'), ('Factory RRR', '1411 Cedar St, Springfield, IL 62770');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSS', '1431 Maple St, Springfield, IL 62771'), ('Factory TTT', '1451 Walnut St, Springfield, IL 62772');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUU', '1471 Cherry St, Springfield, IL 62773'), ('Factory VVV', '1491 Elm St, Springfield, IL 62774');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWW', '1511 Oak St, Springfield, IL 62775'), ('Factory XXX', '1531 Pine St, Springfield, IL 62776');
INSERT INTO factories (factory_name, address) VALUES ('Factory YYY', '1551 Birch St, Springfield, IL 62777'), ('Factory ZZZ', '1571 Cedar St, Springfield, IL 62778');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAAA', '1591 Maple St, Springfield, IL 62779'), ('Factory BBBB', '1611 Walnut St, Springfield, IL 62780');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCCC', '1631 Cherry St, Springfield, IL 62781'), ('Factory DDDD', '1651 Elm St, Springfield, IL 62782');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEEE', '1671 Oak St, Springfield, IL 62783'), ('Factory FFFF', '1691 Pine St, Springfield, IL 62784');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGGG', '1711 Birch St, Springfield, IL 62785'), ('Factory HHHH', '1731 Cedar St, Springfield, IL 62786');
INSERT INTO factories (factory_name, address) VALUES ('Factory IIII', '1751 Maple St, Springfield, IL 62787'), ('Factory JJJJ', '1771 Walnut St, Springfield, IL 62788');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1791 Cherry St, Springfield, IL 62789'), ('Factory LLLL', '1811 Elm St, Springfield, IL 62790');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMMM', '1831 Oak St, Springfield, IL 62791'), ('Factory NNNN', '1851 Pine St, Springfield, IL 62792');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOOO', '1871 Birch St, Springfield, IL 62793'), ('Factory PPPP', '1891 Cedar St, Springfield, IL 62794');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQQ', '1911 Maple St, Springfield, IL 62795'), ('Factory RRRR', '1931 Walnut St, Springfield, IL 62796');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSSS', '1951 Cherry St, Springfield, IL 62797'), ('Factory TTTT', '1971 Elm St, Springfield, IL 62798');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUUU', '1991 Oak St, Springfield, IL 62799'), ('Factory VVVV', '2011 Pine St, Springfield, IL 62800');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWWW', '2031 Birch St, Springfield, IL 62801'), ('Factory XXXX', '2051 Cedar St, Springfield, IL 62802');

select count(*) from test_snapshot_restore.factories;

create snapshot snapshot_01 for account sys;


drop database test_snapshot_restore;
drop database snapshot_read;

restore account sys from snapshot snapshot_01;

use test_snapshot_restore;
select count(*) from test_snapshot_restore.test_restore;
select count(*) from test_snapshot_restore.test_restore_2;
select count(*) from test_snapshot_restore.factories;

use snapshot_read;
select count(*) from snapshot_read.test_snapshot_read;
select count(*) from snapshot_read.users;
select count(*) from snapshot_read.students;

drop snapshot snapshot_01;
drop database snapshot_read;
drop database test_snapshot_restore;


-- normal account
create account test_account admin_name = 'test_user' identified by '111';
-- @session:id=2&user=test_account:test_user&password=111
create database if not exists snapshot_read;
use snapshot_read;
create table test_snapshot_read (a int);
insert into test_snapshot_read (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from snapshot_read.test_snapshot_read;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (username, email, password) VALUES ('john_doe', 'john@example.com', 'securepassword123');
INSERT INTO users (username, email, password) VALUES ('jane_smith', 'jane.smith@example.com', 'password123'),('alice_jones', 'alice.jones@gmail.com', 'ilovecats'),('bob_brown', 'bob.brown@yahoo.com', 'mysecretpassword'),('charlie_lee', 'charlie.lee@protonmail.ch', 'secure123'),('diana_wilson', 'diana.wilson@outlook.com', 'D1anaPass');
INSERT INTO users (username, email, password) VALUES ('emily_adams', 'emily.adams@icloud.com', 'Em1Ly123'), ('francis_nguyen', 'francis.nguyen@domain.com', 'fNguyenPass'), ('grace_parker', 'grace.parker@server.com', 'G1race123'), ('henry_miller', 'henry.miller@company.org', 'hMillerSecret'), ('isabella_grant', 'isabella.grant@university.edu', 'iGrantPass');

select count(*) from snapshot_read.users;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

INSERT INTO students (name, age) VALUES ('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
INSERT INTO students (name, age) VALUES ('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
INSERT INTO students (name, age) VALUES ('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
INSERT INTO students (name, age) VALUES ('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
INSERT INTO students (name, age) VALUES ('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
INSERT INTO students (name, age) VALUES ('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
INSERT INTO students (name, age) VALUES ('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
INSERT INTO students (name, age) VALUES ('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
INSERT INTO students (name, age) VALUES ('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
INSERT INTO students (name, age) VALUES ('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from snapshot_read.students;


create database if not exists test_snapshot_restore;
use test_snapshot_restore;

create table test_restore (a int);
insert into test_restore (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from test_snapshot_restore.test_restore;

CREATE TABLE test_restore_2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
insert into test_restore_2 (name, age) values('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
insert into test_restore_2 (name, age) values('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
insert into test_restore_2 (name, age) values('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
insert into test_restore_2 (name, age) values('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
insert into test_restore_2 (name, age) values('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
insert into test_restore_2 (name, age) values('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
insert into test_restore_2 (name, age) values('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
insert into test_restore_2 (name, age) values('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
insert into test_restore_2 (name, age) values('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
insert into test_restore_2 (name, age) values('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from test_snapshot_restore.test_restore_2;

CREATE TABLE factories (
    factory_name VARCHAR(255) PRIMARY KEY,
    address TEXT NOT NULL
);

INSERT INTO factories (factory_name, address) VALUES ('Factory A', '123 Main St, Springfield, IL 62701'), ('Factory B', '456 Elm St, Springfield, IL 62702');
INSERT INTO factories (factory_name, address) VALUES ('Factory C', '789 Oak St, Springfield, IL 62703'), ('Factory D', '101 Pine St, Springfield, IL 62704');
INSERT INTO factories (factory_name, address) VALUES ('Factory E', '112 Birch St, Springfield, IL 62705'), ('Factory F', '131 Cedar St, Springfield, IL 62706');
INSERT INTO factories (factory_name, address) VALUES ('Factory G', '151 Maple St, Springfield, IL 62707'), ('Factory H', '171 Walnut St, Springfield, IL 62708');
INSERT INTO factories (factory_name, address) VALUES ('Factory I', '191 Cherry St, Springfield, IL 62709'), ('Factory J', '211 Elm St, Springfield, IL 62710');
INSERT INTO factories (factory_name, address) VALUES ('Factory K', '231 Oak St, Springfield, IL 62711'), ('Factory LLLLLLLLL', '251 Pine St, Springfield, IL 62712');
INSERT INTO factories (factory_name, address) VALUES ('Factory M', '271 Birch St, Springfield, IL 62713'), ('Factory N', '291 Cedar St, Springfield, IL 62714');
INSERT INTO factories (factory_name, address) VALUES ('Factory O', '311 Maple St, Springfield, IL 62715'), ('Factory P', '331 Walnut St, Springfield, IL 62716');
INSERT INTO factories (factory_name, address) VALUES ('Factory Q', '351 Cherry St, Springfield, IL 62717'), ('Factory R', '371 Elm St, Springfield, IL 62718');
INSERT INTO factories (factory_name, address) VALUES ('Factory S', '391 Oak St, Springfield, IL 62719'), ('Factory T', '411 Pine St, Springfield, IL 62720');
INSERT INTO factories (factory_name, address) VALUES ('Factory U', '431 Birch St, Springfield, IL 62721'), ('Factory V', '451 Cedar St, Springfield, IL 62722');
INSERT INTO factories (factory_name, address) VALUES ('Factory W', '471 Maple St, Springfield, IL 62723'), ('Factory X', '491 Walnut St, Springfield, IL 62724');
INSERT INTO factories (factory_name, address) VALUES ('Factory Y', '511 Cherry St, Springfield, IL 62725'), ('Factory Z', '531 Elm St, Springfield, IL 62726');
INSERT INTO factories (factory_name, address) VALUES ('Factory AA', '551 Oak St, Springfield, IL 62727'), ('Factory BB', '571 Pine St, Springfield, IL 62728');
INSERT INTO factories (factory_name, address) VALUES ('Factory CC', '591 Birch St, Springfield, IL 62729'), ('Factory DD', '611 Cedar St, Springfield, IL 62730');
INSERT INTO factories (factory_name, address) VALUES ('Factory EE', '631 Maple St, Springfield, IL 62731'), ('Factory FF', '651 Walnut St, Springfield, IL 62732');
INSERT INTO factories (factory_name, address) VALUES ('Factory GG', '671 Cherry St, Springfield, IL 62733'), ('Factory HH', '691 Elm St, Springfield, IL 62734');
INSERT INTO factories (factory_name, address) VALUES ('Factory II', '711 Oak St, Springfield, IL 62735'), ('Factory JJ', '731 Pine St, Springfield, IL 62736');
INSERT INTO factories (factory_name, address) VALUES ('Factory KK', '751 Birch St, Springfield, IL 62737'), ('Factory LL', '771 Cedar St, Springfield, IL 62738');
INSERT INTO factories (factory_name, address) VALUES ('Factory MM', '791 Maple St, Springfield, IL 62739'), ('Factory NN', '811 Walnut St, Springfield, IL 62740');
INSERT INTO factories (factory_name, address) VALUES ('Factory OO', '831 Cherry St, Springfield, IL 62741'), ('Factory PP', '851 Elm St, Springfield, IL 62742');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQ', '871 Oak St, Springfield, IL 62743'), ('Factory RR', '891 Pine St, Springfield, IL 62744');
INSERT INTO factories (factory_name, address) VALUES ('Factory SS', '911 Birch St, Springfield, IL 62745'), ('Factory TT', '931 Cedar St, Springfield, IL 62746');
INSERT INTO factories (factory_name, address) VALUES ('Factory UU', '951 Maple St, Springfield, IL 62747'), ('Factory VV', '971 Walnut St, Springfield, IL 62748');
INSERT INTO factories (factory_name, address) VALUES ('Factory WW', '991 Cherry St, Springfield, IL 62749'), ('Factory XX', '1011 Elm St, Springfield, IL 62750');
INSERT INTO factories (factory_name, address) VALUES ('Factory YY', '1031 Oak St, Springfield, IL 62751'), ('Factory ZZ', '1051 Pine St, Springfield, IL 62752');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAA', '1071 Birch St, Springfield, IL 62753'), ('Factory BBB', '1091 Cedar St, Springfield, IL 62754');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCC', '1111 Maple St, Springfield, IL 62755'), ('Factory DDD', '1131 Walnut St, Springfield, IL 62756');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEE', '1151 Cherry St, Springfield, IL 62757'), ('Factory FFF', '1171 Elm St, Springfield, IL 62758');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGG', '1191 Oak St, Springfield, IL 62759'), ('Factory HHH', '1211 Pine St, Springfield, IL 62760');
INSERT INTO factories (factory_name, address) VALUES ('Factory III', '1231 Birch St, Springfield, IL 62761'), ('Factory JJJ', '1251 Cedar St, Springfield, IL 62762');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1271 Maple St, Springfield, IL 62763'), ('Factory LLLLL', '1291 Walnut St, Springfield, IL 62764');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMM', '1311 Cherry St, Springfield, IL 62765'), ('Factory NNN', '1331 Elm St, Springfield, IL 62766');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOO', '1351 Oak St, Springfield, IL 62767'), ('Factory PPP', '1371 Pine St, Springfield, IL 62768');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQ', '1391 Birch St, Springfield, IL 62769'), ('Factory RRR', '1411 Cedar St, Springfield, IL 62770');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSS', '1431 Maple St, Springfield, IL 62771'), ('Factory TTT', '1451 Walnut St, Springfield, IL 62772');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUU', '1471 Cherry St, Springfield, IL 62773'), ('Factory VVV', '1491 Elm St, Springfield, IL 62774');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWW', '1511 Oak St, Springfield, IL 62775'), ('Factory XXX', '1531 Pine St, Springfield, IL 62776');
INSERT INTO factories (factory_name, address) VALUES ('Factory YYY', '1551 Birch St, Springfield, IL 62777'), ('Factory ZZZ', '1571 Cedar St, Springfield, IL 62778');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAAA', '1591 Maple St, Springfield, IL 62779'), ('Factory BBBB', '1611 Walnut St, Springfield, IL 62780');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCCC', '1631 Cherry St, Springfield, IL 62781'), ('Factory DDDD', '1651 Elm St, Springfield, IL 62782');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEEE', '1671 Oak St, Springfield, IL 62783'), ('Factory FFFF', '1691 Pine St, Springfield, IL 62784');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGGG', '1711 Birch St, Springfield, IL 62785'), ('Factory HHHH', '1731 Cedar St, Springfield, IL 62786');
INSERT INTO factories (factory_name, address) VALUES ('Factory IIII', '1751 Maple St, Springfield, IL 62787'), ('Factory JJJJ', '1771 Walnut St, Springfield, IL 62788');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1791 Cherry St, Springfield, IL 62789'), ('Factory LLLL', '1811 Elm St, Springfield, IL 62790');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMMM', '1831 Oak St, Springfield, IL 62791'), ('Factory NNNN', '1851 Pine St, Springfield, IL 62792');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOOO', '1871 Birch St, Springfield, IL 62793'), ('Factory PPPP', '1891 Cedar St, Springfield, IL 62794');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQQ', '1911 Maple St, Springfield, IL 62795'), ('Factory RRRR', '1931 Walnut St, Springfield, IL 62796');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSSS', '1951 Cherry St, Springfield, IL 62797'), ('Factory TTTT', '1971 Elm St, Springfield, IL 62798');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUUU', '1991 Oak St, Springfield, IL 62799'), ('Factory VVVV', '2011 Pine St, Springfield, IL 62800');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWWW', '2031 Birch St, Springfield, IL 62801'), ('Factory XXXX', '2051 Cedar St, Springfield, IL 62802');

select count(*) from test_snapshot_restore.factories;

create snapshot snapshot_01 for account test_account;


drop database test_snapshot_restore;
drop database snapshot_read;

restore account test_account from snapshot snapshot_01;

use test_snapshot_restore;
select count(*) from test_snapshot_restore.test_restore;
select count(*) from test_snapshot_restore.test_restore_2;
select count(*) from test_snapshot_restore.factories;

use snapshot_read;
select count(*) from snapshot_read.test_snapshot_read;
select count(*) from snapshot_read.users;
select count(*) from snapshot_read.students;

drop snapshot snapshot_01;
drop database snapshot_read;
drop database test_snapshot_restore;
-- @session
drop account test_account;

-- sys restore normal account
create account test_account admin_name = 'test_user' identified by '111';
-- @session:id=3&user=test_account:test_user&password=111
create database if not exists snapshot_read;
use snapshot_read;
create table test_snapshot_read (a int);
insert into test_snapshot_read (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from snapshot_read.test_snapshot_read;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (username, email, password) VALUES ('john_doe', 'john@example.com', 'securepassword123');
INSERT INTO users (username, email, password) VALUES ('jane_smith', 'jane.smith@example.com', 'password123'),('alice_jones', 'alice.jones@gmail.com', 'ilovecats'),('bob_brown', 'bob.brown@yahoo.com', 'mysecretpassword'),('charlie_lee', 'charlie.lee@protonmail.ch', 'secure123'),('diana_wilson', 'diana.wilson@outlook.com', 'D1anaPass');
INSERT INTO users (username, email, password) VALUES ('emily_adams', 'emily.adams@icloud.com', 'Em1Ly123'), ('francis_nguyen', 'francis.nguyen@domain.com', 'fNguyenPass'), ('grace_parker', 'grace.parker@server.com', 'G1race123'), ('henry_miller', 'henry.miller@company.org', 'hMillerSecret'), ('isabella_grant', 'isabella.grant@university.edu', 'iGrantPass');

select count(*) from snapshot_read.users;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

INSERT INTO students (name, age) VALUES ('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
INSERT INTO students (name, age) VALUES ('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
INSERT INTO students (name, age) VALUES ('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
INSERT INTO students (name, age) VALUES ('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
INSERT INTO students (name, age) VALUES ('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
INSERT INTO students (name, age) VALUES ('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
INSERT INTO students (name, age) VALUES ('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
INSERT INTO students (name, age) VALUES ('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
INSERT INTO students (name, age) VALUES ('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
INSERT INTO students (name, age) VALUES ('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from snapshot_read.students;

create database if not exists test_snapshot_restore;
use test_snapshot_restore;

create table test_restore (a int);
insert into test_restore (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from test_snapshot_restore.test_restore;

CREATE TABLE test_restore_2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
insert into test_restore_2 (name, age) values('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
insert into test_restore_2 (name, age) values('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
insert into test_restore_2 (name, age) values('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
insert into test_restore_2 (name, age) values('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
insert into test_restore_2 (name, age) values('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
insert into test_restore_2 (name, age) values('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
insert into test_restore_2 (name, age) values('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
insert into test_restore_2 (name, age) values('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
insert into test_restore_2 (name, age) values('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
insert into test_restore_2 (name, age) values('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from test_snapshot_restore.test_restore_2;

CREATE TABLE factories (
    factory_name VARCHAR(255) PRIMARY KEY,
    address TEXT NOT NULL
);

INSERT INTO factories (factory_name, address) VALUES ('Factory A', '123 Main St, Springfield, IL 62701'), ('Factory B', '456 Elm St, Springfield, IL 62702');
INSERT INTO factories (factory_name, address) VALUES ('Factory C', '789 Oak St, Springfield, IL 62703'), ('Factory D', '101 Pine St, Springfield, IL 62704');
INSERT INTO factories (factory_name, address) VALUES ('Factory E', '112 Birch St, Springfield, IL 62705'), ('Factory F', '131 Cedar St, Springfield, IL 62706');
INSERT INTO factories (factory_name, address) VALUES ('Factory G', '151 Maple St, Springfield, IL 62707'), ('Factory H', '171 Walnut St, Springfield, IL 62708');
INSERT INTO factories (factory_name, address) VALUES ('Factory I', '191 Cherry St, Springfield, IL 62709'), ('Factory J', '211 Elm St, Springfield, IL 62710');
INSERT INTO factories (factory_name, address) VALUES ('Factory K', '231 Oak St, Springfield, IL 62711'), ('Factory L', '251 Pine St, Springfield, IL 62712');
INSERT INTO factories (factory_name, address) VALUES ('Factory M', '271 Birch St, Springfield, IL 62713'), ('Factory N', '291 Cedar St, Springfield, IL 62714');
INSERT INTO factories (factory_name, address) VALUES ('Factory O', '311 Maple St, Springfield, IL 62715'), ('Factory P', '331 Walnut St, Springfield, IL 62716');
INSERT INTO factories (factory_name, address) VALUES ('Factory Q', '351 Cherry St, Springfield, IL 62717'), ('Factory R', '371 Elm St, Springfield, IL 62718');
INSERT INTO factories (factory_name, address) VALUES ('Factory S', '391 Oak St, Springfield, IL 62719'), ('Factory T', '411 Pine St, Springfield, IL 62720');
INSERT INTO factories (factory_name, address) VALUES ('Factory U', '431 Birch St, Springfield, IL 62721'), ('Factory V', '451 Cedar St, Springfield, IL 62722');
INSERT INTO factories (factory_name, address) VALUES ('Factory W', '471 Maple St, Springfield, IL 62723'), ('Factory X', '491 Walnut St, Springfield, IL 62724');
INSERT INTO factories (factory_name, address) VALUES ('Factory Y', '511 Cherry St, Springfield, IL 62725'), ('Factory Z', '531 Elm St, Springfield, IL 62726');
INSERT INTO factories (factory_name, address) VALUES ('Factory AA', '551 Oak St, Springfield, IL 62727'), ('Factory BB', '571 Pine St, Springfield, IL 62728');
INSERT INTO factories (factory_name, address) VALUES ('Factory CC', '591 Birch St, Springfield, IL 62729'), ('Factory DD', '611 Cedar St, Springfield, IL 62730');
INSERT INTO factories (factory_name, address) VALUES ('Factory EE', '631 Maple St, Springfield, IL 62731'), ('Factory FF', '651 Walnut St, Springfield, IL 62732');
INSERT INTO factories (factory_name, address) VALUES ('Factory GG', '671 Cherry St, Springfield, IL 62733'), ('Factory HH', '691 Elm St, Springfield, IL 62734');
INSERT INTO factories (factory_name, address) VALUES ('Factory II', '711 Oak St, Springfield, IL 62735'), ('Factory JJ', '731 Pine St, Springfield, IL 62736');
INSERT INTO factories (factory_name, address) VALUES ('Factory KK', '751 Birch St, Springfield, IL 62737'), ('Factory LL', '771 Cedar St, Springfield, IL 62738');
INSERT INTO factories (factory_name, address) VALUES ('Factory MM', '791 Maple St, Springfield, IL 62739'), ('Factory NN', '811 Walnut St, Springfield, IL 62740');
INSERT INTO factories (factory_name, address) VALUES ('Factory OO', '831 Cherry St, Springfield, IL 62741'), ('Factory PP', '851 Elm St, Springfield, IL 62742');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQ', '871 Oak St, Springfield, IL 62743'), ('Factory RR', '891 Pine St, Springfield, IL 62744');
INSERT INTO factories (factory_name, address) VALUES ('Factory SS', '911 Birch St, Springfield, IL 62745'), ('Factory TT', '931 Cedar St, Springfield, IL 62746');
INSERT INTO factories (factory_name, address) VALUES ('Factory UU', '951 Maple St, Springfield, IL 62747'), ('Factory VV', '971 Walnut St, Springfield, IL 62748');
INSERT INTO factories (factory_name, address) VALUES ('Factory WW', '991 Cherry St, Springfield, IL 62749'), ('Factory XX', '1011 Elm St, Springfield, IL 62750');
INSERT INTO factories (factory_name, address) VALUES ('Factory YY', '1031 Oak St, Springfield, IL 62751'), ('Factory ZZ', '1051 Pine St, Springfield, IL 62752');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAA', '1071 Birch St, Springfield, IL 62753'), ('Factory BBB', '1091 Cedar St, Springfield, IL 62754');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCC', '1111 Maple St, Springfield, IL 62755'), ('Factory DDD', '1131 Walnut St, Springfield, IL 62756');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEE', '1151 Cherry St, Springfield, IL 62757'), ('Factory FFF', '1171 Elm St, Springfield, IL 62758');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGG', '1191 Oak St, Springfield, IL 62759'), ('Factory HHH', '1211 Pine St, Springfield, IL 62760');
INSERT INTO factories (factory_name, address) VALUES ('Factory III', '1231 Birch St, Springfield, IL 62761'), ('Factory JJJ', '1251 Cedar St, Springfield, IL 62762');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1271 Maple St, Springfield, IL 62763'), ('Factory LLLLL', '1291 Walnut St, Springfield, IL 62764');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMM', '1311 Cherry St, Springfield, IL 62765'), ('Factory NNN', '1331 Elm St, Springfield, IL 62766');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOO', '1351 Oak St, Springfield, IL 62767'), ('Factory PPP', '1371 Pine St, Springfield, IL 62768');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQ', '1391 Birch St, Springfield, IL 62769'), ('Factory RRR', '1411 Cedar St, Springfield, IL 62770');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSS', '1431 Maple St, Springfield, IL 62771'), ('Factory TTT', '1451 Walnut St, Springfield, IL 62772');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUU', '1471 Cherry St, Springfield, IL 62773'), ('Factory VVV', '1491 Elm St, Springfield, IL 62774');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWW', '1511 Oak St, Springfield, IL 62775'), ('Factory XXX', '1531 Pine St, Springfield, IL 62776');
INSERT INTO factories (factory_name, address) VALUES ('Factory YYY', '1551 Birch St, Springfield, IL 62777'), ('Factory ZZZ', '1571 Cedar St, Springfield, IL 62778');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAAA', '1591 Maple St, Springfield, IL 62779'), ('Factory BBBB', '1611 Walnut St, Springfield, IL 62780');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCCC', '1631 Cherry St, Springfield, IL 62781'), ('Factory DDDD', '1651 Elm St, Springfield, IL 62782');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEEE', '1671 Oak St, Springfield, IL 62783'), ('Factory FFFF', '1691 Pine St, Springfield, IL 62784');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGGG', '1711 Birch St, Springfield, IL 62785'), ('Factory HHHH', '1731 Cedar St, Springfield, IL 62786');
INSERT INTO factories (factory_name, address) VALUES ('Factory IIII', '1751 Maple St, Springfield, IL 62787'), ('Factory JJJJ', '1771 Walnut St, Springfield, IL 62788');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1791 Cherry St, Springfield, IL 62789'), ('Factory LLLL', '1811 Elm St, Springfield, IL 62790');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMMM', '1831 Oak St, Springfield, IL 62791'), ('Factory NNNN', '1851 Pine St, Springfield, IL 62792');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOOO', '1871 Birch St, Springfield, IL 62793'), ('Factory PPPP', '1891 Cedar St, Springfield, IL 62794');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQQ', '1911 Maple St, Springfield, IL 62795'), ('Factory RRRR', '1931 Walnut St, Springfield, IL 62796');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSSS', '1951 Cherry St, Springfield, IL 62797'), ('Factory TTTT', '1971 Elm St, Springfield, IL 62798');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUUU', '1991 Oak St, Springfield, IL 62799'), ('Factory VVVV', '2011 Pine St, Springfield, IL 62800');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWWW', '2031 Birch St, Springfield, IL 62801'), ('Factory XXXX', '2051 Cedar St, Springfield, IL 62802');

select count(*) from test_snapshot_restore.factories;
-- @session

create snapshot snapshot_01 for account test_account;

-- @session:id=4&user=test_account:test_user&password=111
drop database test_snapshot_restore;
drop database snapshot_read;
-- @session

restore account test_account from snapshot snapshot_01;

-- @session:id=5&user=test_account:test_user&password=111
use test_snapshot_restore;
select count(*) from test_snapshot_restore.test_restore;
select count(*) from test_snapshot_restore.test_restore_2;
select count(*) from test_snapshot_restore.factories;

use snapshot_read;
select count(*) from snapshot_read.test_snapshot_read;
select count(*) from snapshot_read.users;
select count(*) from snapshot_read.students;
-- @session


drop account test_account;
drop snapshot snapshot_01;


-- sys account restore normal account to newAccount
create account test_account admin_name = 'test_user' identified by '111';
-- @session:id=6&user=test_account:test_user&password=111
create database if not exists snapshot_read;
use snapshot_read;
create table test_snapshot_read (a int);
insert into test_snapshot_read (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from snapshot_read.test_snapshot_read;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (username, email, password) VALUES ('john_doe', 'john@example.com', 'securepassword123');
INSERT INTO users (username, email, password) VALUES ('jane_smith', 'jane.smith@example.com', 'password123'),('alice_jones', 'alice.jones@gmail.com', 'ilovecats'),('bob_brown', 'bob.brown@yahoo.com', 'mysecretpassword'),('charlie_lee', 'charlie.lee@protonmail.ch', 'secure123'),('diana_wilson', 'diana.wilson@outlook.com', 'D1anaPass');
INSERT INTO users (username, email, password) VALUES ('emily_adams', 'emily.adams@icloud.com', 'Em1Ly123'), ('francis_nguyen', 'francis.nguyen@domain.com', 'fNguyenPass'), ('grace_parker', 'grace.parker@server.com', 'G1race123'), ('henry_miller', 'henry.miller@company.org', 'hMillerSecret'), ('isabella_grant', 'isabella.grant@university.edu', 'iGrantPass');

select count(*) from snapshot_read.users;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

INSERT INTO students (name, age) VALUES ('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
INSERT INTO students (name, age) VALUES ('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
INSERT INTO students (name, age) VALUES ('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
INSERT INTO students (name, age) VALUES ('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
INSERT INTO students (name, age) VALUES ('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
INSERT INTO students (name, age) VALUES ('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
INSERT INTO students (name, age) VALUES ('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
INSERT INTO students (name, age) VALUES ('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
INSERT INTO students (name, age) VALUES ('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
INSERT INTO students (name, age) VALUES ('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from snapshot_read.students;

create database if not exists test_snapshot_restore;
use test_snapshot_restore;

create table test_restore (a int);
insert into test_restore (a) values(1), (2), (3), (4), (5),(6), (7), (8), (9), (10), (11), (12),(13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),(51), (52), (53), (54), (55), (56), (57), (58), (59), (60),(61), (62), (63), (64), (65), (66), (67), (68), (69), (70),(71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90),(91), (92), (93), (94), (95), (96), (97), (98), (99), (100);
select count(*) from test_snapshot_restore.test_restore;

CREATE TABLE test_restore_2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
insert into test_restore_2 (name, age) values('Alice', 20), ('Bob', 21), ('Charlie', 22), ('Diana', 23), ('Emily', 24);
insert into test_restore_2 (name, age) values('Francis', 25), ('Grace', 26), ('Henry', 27), ('Isabella', 28), ('Jack', 29);
insert into test_restore_2 (name, age) values('Katherine', 30), ('Liam', 31), ('Mia', 32), ('Noah', 33), ('Olivia', 34);
insert into test_restore_2 (name, age) values('Penelope', 35), ('Quinn', 36), ('Ryan', 37), ('Sophia', 38), ('Thomas', 39);
insert into test_restore_2 (name, age) values('Ursula', 40), ('Victor', 41), ('Wendy', 42), ('Xander', 43), ('Yvonne', 44);
insert into test_restore_2 (name, age) values('Zachary', 45), ('Ava', 46), ('Benjamin', 47), ('Charlotte', 48), ('Daniel', 49);
insert into test_restore_2 (name, age) values('Ella', 50), ('Finn', 51), ('Gabriella', 52), ('Henry', 53), ('Isabella', 54);
insert into test_restore_2 (name, age) values('Jack', 55), ('Katherine', 56), ('Liam', 57), ('Mia', 58), ('Noah', 59);
insert into test_restore_2 (name, age) values('Olivia', 60), ('Penelope', 61), ('Quinn', 62), ('Ryan', 63), ('Sophia', 64);
insert into test_restore_2 (name, age) values('Thomas', 65), ('Ursula', 66), ('Victor', 67), ('Wendy', 68), ('Xander', 69);

select count(*) from test_snapshot_restore.test_restore_2;

CREATE TABLE factories (
    factory_name VARCHAR(255) PRIMARY KEY,
    address TEXT NOT NULL
);

INSERT INTO factories (factory_name, address) VALUES ('Factory A', '123 Main St, Springfield, IL 62701'), ('Factory B', '456 Elm St, Springfield, IL 62702');
INSERT INTO factories (factory_name, address) VALUES ('Factory C', '789 Oak St, Springfield, IL 62703'), ('Factory D', '101 Pine St, Springfield, IL 62704');
INSERT INTO factories (factory_name, address) VALUES ('Factory E', '112 Birch St, Springfield, IL 62705'), ('Factory F', '131 Cedar St, Springfield, IL 62706');
INSERT INTO factories (factory_name, address) VALUES ('Factory G', '151 Maple St, Springfield, IL 62707'), ('Factory H', '171 Walnut St, Springfield, IL 62708');
INSERT INTO factories (factory_name, address) VALUES ('Factory I', '191 Cherry St, Springfield, IL 62709'), ('Factory J', '211 Elm St, Springfield, IL 62710');
INSERT INTO factories (factory_name, address) VALUES ('Factory K', '231 Oak St, Springfield, IL 62711'), ('Factory LLLLL2', '251 Pine St, Springfield, IL 62712');
INSERT INTO factories (factory_name, address) VALUES ('Factory M', '271 Birch St, Springfield, IL 62713'), ('Factory N', '291 Cedar St, Springfield, IL 62714');
INSERT INTO factories (factory_name, address) VALUES ('Factory O', '311 Maple St, Springfield, IL 62715'), ('Factory P', '331 Walnut St, Springfield, IL 62716');
INSERT INTO factories (factory_name, address) VALUES ('Factory Q', '351 Cherry St, Springfield, IL 62717'), ('Factory R', '371 Elm St, Springfield, IL 62718');
INSERT INTO factories (factory_name, address) VALUES ('Factory S', '391 Oak St, Springfield, IL 62719'), ('Factory T', '411 Pine St, Springfield, IL 62720');
INSERT INTO factories (factory_name, address) VALUES ('Factory U', '431 Birch St, Springfield, IL 62721'), ('Factory V', '451 Cedar St, Springfield, IL 62722');
INSERT INTO factories (factory_name, address) VALUES ('Factory W', '471 Maple St, Springfield, IL 62723'), ('Factory X', '491 Walnut St, Springfield, IL 62724');
INSERT INTO factories (factory_name, address) VALUES ('Factory Y', '511 Cherry St, Springfield, IL 62725'), ('Factory Z', '531 Elm St, Springfield, IL 62726');
INSERT INTO factories (factory_name, address) VALUES ('Factory AA', '551 Oak St, Springfield, IL 62727'), ('Factory BB', '571 Pine St, Springfield, IL 62728');
INSERT INTO factories (factory_name, address) VALUES ('Factory CC', '591 Birch St, Springfield, IL 62729'), ('Factory DD', '611 Cedar St, Springfield, IL 62730');
INSERT INTO factories (factory_name, address) VALUES ('Factory EE', '631 Maple St, Springfield, IL 62731'), ('Factory FF', '651 Walnut St, Springfield, IL 62732');
INSERT INTO factories (factory_name, address) VALUES ('Factory GG', '671 Cherry St, Springfield, IL 62733'), ('Factory HH', '691 Elm St, Springfield, IL 62734');
INSERT INTO factories (factory_name, address) VALUES ('Factory II', '711 Oak St, Springfield, IL 62735'), ('Factory JJ', '731 Pine St, Springfield, IL 62736');
INSERT INTO factories (factory_name, address) VALUES ('Factory KK', '751 Birch St, Springfield, IL 62737'), ('Factory LL', '771 Cedar St, Springfield, IL 62738');
INSERT INTO factories (factory_name, address) VALUES ('Factory MM', '791 Maple St, Springfield, IL 62739'), ('Factory NN', '811 Walnut St, Springfield, IL 62740');
INSERT INTO factories (factory_name, address) VALUES ('Factory OO', '831 Cherry St, Springfield, IL 62741'), ('Factory PP', '851 Elm St, Springfield, IL 62742');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQ', '871 Oak St, Springfield, IL 62743'), ('Factory RR', '891 Pine St, Springfield, IL 62744');
INSERT INTO factories (factory_name, address) VALUES ('Factory SS', '911 Birch St, Springfield, IL 62745'), ('Factory TT', '931 Cedar St, Springfield, IL 62746');
INSERT INTO factories (factory_name, address) VALUES ('Factory UU', '951 Maple St, Springfield, IL 62747'), ('Factory VV', '971 Walnut St, Springfield, IL 62748');
INSERT INTO factories (factory_name, address) VALUES ('Factory WW', '991 Cherry St, Springfield, IL 62749'), ('Factory XX', '1011 Elm St, Springfield, IL 62750');
INSERT INTO factories (factory_name, address) VALUES ('Factory YY', '1031 Oak St, Springfield, IL 62751'), ('Factory ZZ', '1051 Pine St, Springfield, IL 62752');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAA', '1071 Birch St, Springfield, IL 62753'), ('Factory BBB', '1091 Cedar St, Springfield, IL 62754');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCC', '1111 Maple St, Springfield, IL 62755'), ('Factory DDD', '1131 Walnut St, Springfield, IL 62756');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEE', '1151 Cherry St, Springfield, IL 62757'), ('Factory FFF', '1171 Elm St, Springfield, IL 62758');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGG', '1191 Oak St, Springfield, IL 62759'), ('Factory HHH', '1211 Pine St, Springfield, IL 62760');
INSERT INTO factories (factory_name, address) VALUES ('Factory III', '1231 Birch St, Springfield, IL 62761'), ('Factory JJJ', '1251 Cedar St, Springfield, IL 62762');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1271 Maple St, Springfield, IL 62763'), ('Factory LLLLLL', '1291 Walnut St, Springfield, IL 62764');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMM', '1311 Cherry St, Springfield, IL 62765'), ('Factory NNN', '1331 Elm St, Springfield, IL 62766');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOO', '1351 Oak St, Springfield, IL 62767'), ('Factory PPP', '1371 Pine St, Springfield, IL 62768');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQ', '1391 Birch St, Springfield, IL 62769'), ('Factory RRR', '1411 Cedar St, Springfield, IL 62770');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSS', '1431 Maple St, Springfield, IL 62771'), ('Factory TTT', '1451 Walnut St, Springfield, IL 62772');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUU', '1471 Cherry St, Springfield, IL 62773'), ('Factory VVV', '1491 Elm St, Springfield, IL 62774');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWW', '1511 Oak St, Springfield, IL 62775'), ('Factory XXX', '1531 Pine St, Springfield, IL 62776');
INSERT INTO factories (factory_name, address) VALUES ('Factory YYY', '1551 Birch St, Springfield, IL 62777'), ('Factory ZZZ', '1571 Cedar St, Springfield, IL 62778');
INSERT INTO factories (factory_name, address) VALUES ('Factory AAAA', '1591 Maple St, Springfield, IL 62779'), ('Factory BBBB', '1611 Walnut St, Springfield, IL 62780');
INSERT INTO factories (factory_name, address) VALUES ('Factory CCCC', '1631 Cherry St, Springfield, IL 62781'), ('Factory DDDD', '1651 Elm St, Springfield, IL 62782');
INSERT INTO factories (factory_name, address) VALUES ('Factory EEEE', '1671 Oak St, Springfield, IL 62783'), ('Factory FFFF', '1691 Pine St, Springfield, IL 62784');
INSERT INTO factories (factory_name, address) VALUES ('Factory GGGG', '1711 Birch St, Springfield, IL 62785'), ('Factory HHHH', '1731 Cedar St, Springfield, IL 62786');
INSERT INTO factories (factory_name, address) VALUES ('Factory IIII', '1751 Maple St, Springfield, IL 62787'), ('Factory JJJJ', '1771 Walnut St, Springfield, IL 62788');
INSERT INTO factories (factory_name, address) VALUES ('Factory KKKK', '1791 Cherry St, Springfield, IL 62789'), ('Factory LLLL', '1811 Elm St, Springfield, IL 62790');
INSERT INTO factories (factory_name, address) VALUES ('Factory MMMM', '1831 Oak St, Springfield, IL 62791'), ('Factory NNNN', '1851 Pine St, Springfield, IL 62792');
INSERT INTO factories (factory_name, address) VALUES ('Factory OOOO', '1871 Birch St, Springfield, IL 62793'), ('Factory PPPP', '1891 Cedar St, Springfield, IL 62794');
INSERT INTO factories (factory_name, address) VALUES ('Factory QQQQ', '1911 Maple St, Springfield, IL 62795'), ('Factory RRRR', '1931 Walnut St, Springfield, IL 62796');
INSERT INTO factories (factory_name, address) VALUES ('Factory SSSS', '1951 Cherry St, Springfield, IL 62797'), ('Factory TTTT', '1971 Elm St, Springfield, IL 62798');
INSERT INTO factories (factory_name, address) VALUES ('Factory UUUU', '1991 Oak St, Springfield, IL 62799'), ('Factory VVVV', '2011 Pine St, Springfield, IL 62800');
INSERT INTO factories (factory_name, address) VALUES ('Factory WWWW', '2031 Birch St, Springfield, IL 62801'), ('Factory XXXX', '2051 Cedar St, Springfield, IL 62802');

select count(*) from test_snapshot_restore.factories;
-- @session

create snapshot snapshot_01 for account test_account;

-- @session:id=7&user=test_account:test_user&password=111
drop database test_snapshot_restore;
drop database snapshot_read;
-- @session


restore account test_account from snapshot snapshot_01;
-- @session:id=8&user=test_account:test_user&password=111
use test_snapshot_restore;
select count(*) from test_snapshot_restore.test_restore;
select count(*) from test_snapshot_restore.test_restore_2;
select count(*) from test_snapshot_restore.factories;

use snapshot_read;
select count(*) from snapshot_read.test_snapshot_read;
select count(*) from snapshot_read.users;
select count(*) from snapshot_read.students;
-- @session

create account test_account_01 admin_name = 'test_user' identified by '111';
restore account test_account from snapshot snapshot_01 to account test_account_01 ;

-- @session:id=9&user=test_account_01:test_user&password=111
use test_snapshot_restore;
select count(*) from test_snapshot_restore.test_restore;
select count(*) from test_snapshot_restore.test_restore_2;
select count(*) from test_snapshot_restore.factories;

use snapshot_read;
select count(*) from snapshot_read.test_snapshot_read;
select count(*) from snapshot_read.users;
select count(*) from snapshot_read.students;
-- @session

drop account test_account;
drop account test_account_01;
drop snapshot snapshot_01;
-- @ignore:1
show snapshots;
