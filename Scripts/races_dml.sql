-- CHAMPIONSHIPS ---

insert into championships (title, description)
values ('World Endurance Championship', 'Description');

insert into championships (title, description)
values ('Formula 1', 'Description');

-- CHAMPIONSHIPS ---

-- RACES ---

insert into races (title, "date", "championship_id")
values ('Qatar 1812km', '2024-03-02', 1);

insert into races (title, "date", "championship_id")
values ('6h of Imola', '2024-04-21', 1);

insert into races (title, "date", "championship_id")
values ('6h of Spa-Francorchamps', '2024-05-11', 1);

insert into races (title, "date", "championship_id")
values ('24h of Le Mans', '2024-05-11', 1);

insert into races (title, "date", "championship_id")
values ('6h of Sao Paulo', '2024-07-14', 1);

insert into races (title, "date", "championship_id")
values ('Lone Star Le Mans', '2024-09-01', 1);

insert into races (title, "date", "championship_id")
values ('6h of Fuji', '2024-09-15', 1);

insert into races (title, "date", "championship_id")
values ('8h of Bahrain', '2024-09-15', 1);

-- RACES --

-- SCHEDULES --
    
INSERT INTO schedules (title, "date", race_id)
VALUES 
('Free Practice 1', '2024-04-19 12:00:00', 7),
('Free Practice 2', '2024-04-19 17:15:00', 7),
('Free Practice 3', '2024-04-20 11:10:00', 7),
('Qualifying LMGT3', '2024-04-20 14:45:00', 7),
('Hyperpole LMGT3', '2024-04-20 15:05:00', 7),
('Qualifying Hypercar', '2024-04-20 15:25:00', 7),
('Hyperpole Hypercar', '2024-04-20 15:43:00', 7),
('Race', '2024-04-21 13:00:00', 7);

INSERT INTO schedules (title, "date", race_id) VALUES 
('Free Practice 1', '2024-02-29 12:20:00', 6),
('Free Practice 2', '2024-02-29 17:30:00', 6),
('Free Practice 3', '2024-03-01 11:00:00', 6),
('Qualifying', '2024-03-01 16:00:00', 6),
('Race', '2024-03-02 11:00:00', 6);

INSERT INTO schedules (title, "date", race_id)
VALUES
('Free Practice 1', '2024-05-02 11:30:00', 8),
('Free Practice 2', '2024-05-02 17:30:00', 8),
('Free Practice 3', '2024-05-03 11:00:00', 8),
('Qualifying', '2024-05-03 14:45:00', 8),
('Race', '2024-05-04 13:45:00', 8);

INSERT INTO schedules (title, "date", race_id) 
VALUES 
('Free Practice 1', '2024-06-12 14:00:00', 9),
('Qualifying', '2024-06-12 18:00:00', 9),
('Free Practice 2', '2024-06-12 22:00:00', 9),
('Free Practice 3', '2024-06-13 09:00:00', 9),
('Hyperpole', '2024-06-13 14:00:00', 9),
('Free Practice 4', '2024-06-13 16:00:00', 9),
('Warmup', '2024-06-15 06:00:00', 9),
('Race', '2024-06-15 10:00:00', 9);

INSERT INTO schedules (title, "date", race_id)
VALUES 
('Free Practice 1', '2024-07-12 14:30:00', 10),
('Free Practice 2', '2024-07-12 19:30:00', 10),
('Free Practice 3', '2024-07-13 11:00:00', 10),
('Qualifying - LMGTE', '2024-07-13 16:20:00', 10),
('Qualifying - Hypercar', '2024-07-13 16:50:00', 10),
('Race', '2024-07-14 11:00:00', 10);

INSERT INTO schedules (title, "date", race_id) 
VALUES 
('Free Practice 1', '2024-08-30 14:00:00', 11),
('Free Practice 2', '2024-08-30 19:30:00', 11),
('Free Practice 3', '2024-08-31 11:00:00', 11),
('Qualifying', '2024-08-31 15:00:00', 11),
('Race', '2024-09-01 12:00:00', 11);

INSERT INTO schedules (title, "date", race_id) 
VALUES 
('Free Practice 1', '2024-08-30 10:00:00', 12),
('Free Practice 2', '2024-08-30 14:00:00', 12),
('Free Practice 3', '2024-08-31 08:00:00', 12),
('Qualifying', '2024-08-31 12:00:00', 12),
('Race', '2024-09-01 09:00:00', 12);

INSERT INTO schedules (title, "date", race_id) 
VALUES 
('Free Practice 1', '2024-08-30 12:00:00', 13),
('Free Practice 2', '2024-08-30 16:00:00', 13),
('Free Practice 3', '2024-08-31 09:00:00', 13),
('Qualifying', '2024-08-31 13:00:00', 13),
('Race', '2024-09-01 10:00:00', 13);

-- SCHEDULES --