
-- Write the CREATE TABLE statement to make this table.
-- CREATE TABLE todos (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(255) NOT NULL,
--   details VARCHAR(1500) NULL,
--   priority INTEGER NOT NULL DEFAULT '1',
--   created_at TIMESTAMP NOT NULL DEFAULT NOW(),
--   completed_at TIMESTAMP NULL
--   );

-- Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times,
-- with not all having a completed time.
INSERT INTO todos (name, priority) VALUES ('buy shampoo', '3');
INSERT INTO todos (name, priority) VALUES ('wash dishes', '4');
INSERT INTO todos (name, priority) VALUES ('clean tub', '4');
INSERT INTO todos (name, priority) VALUES ('wash Ciara', '4');
INSERT INTO todos (name, details, priority) VALUES ('buy parents anniversary present', 'ask brother to chip in', '5');
INSERT INTO todos (name, priority) VALUES ('brainstorm screenplay ideas', '4');
INSERT INTO todos (name, priority) VALUES ('feed Ciara', '5');
INSERT INTO todos (name, priority) VALUES ('walk Ciara', '5');
INSERT INTO todos (name, priority) VALUES ('hang up clothes', '5');
INSERT INTO todos (name, details, priority) VALUES ('clean spill', 'vacuum and mop', '5');
INSERT INTO todos (name, priority) VALUES ('wipe down kitchen counters', '5');
INSERT INTO todos (name, priority, completed_at) VALUES ('meal prep chicken meal', '4', NOW());
INSERT INTO todos (name, priority) VALUES ('meal prep steak meal', '5');
INSERT INTO todos (name, priority) VALUES ('call grandma', '3');
INSERT INTO todos (name, details, priority) VALUES ('pay insurance', 'get money order', '5');
INSERT INTO todos (name, priority) VALUES ('go shopping', '5');
INSERT INTO todos (name, priority) VALUES ('pick up shifts at work', '5');
INSERT INTO todos (name, priority) VALUES ('stock toiletries', '4');
INSERT INTO todos (name, priority) VALUES ('tour possible apartment contenders', '3');
INSERT INTO todos (name, details, priority) VALUES ('look at current developer openings and salaries', 'update resume', '4');

-- Write a SELECT statement to find all incomplete todos with priority 3.
SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;

-- Write a SELECT statement to find the number of incomplete todos by priority.
SELECT COUNT(id), priority FROM todos WHERE completed_at IS NULL GROUP BY priority;

-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT COUNT(id), priority FROM todos WHERE created_at > '2017-09-10 23:49:04.62911' GROUP BY priority;

-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT * FROM todos ORDER BY priority desc, created_at asc LIMIT 1;