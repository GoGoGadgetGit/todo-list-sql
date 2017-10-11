
-- Write the CREATE TABLE statement to make this table.
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  details VARCHAR(1500) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  completed_at TIMESTAMP NULL
  );

-- Write INSERT statements to insert five todos into this table, with one of them completed.
INSERT INTO todos (name, priority) VALUES ('finish jigsaw puzzle', '2');
INSERT INTO todos (name, details, priority) VALUES ('clean apartment', 'wash clothes, clean tub, clean kitchen, vacuum bedroom, mop all hardwood', '3');
INSERT INTO todos (name, details, priority) VALUES ('meal prep', '6 meals Monday, Wednesday, Friday', '4');
INSERT INTO todos (name, priority, completed_at) VALUES ('buy new shoes', '5', NOW());
INSERT INTO todos (name) VALUES ('bingewatch American Horror Story');

-- Write a SELECT statement to find all incomplete todos
SELECT * FROM todos WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.
SELECT * FROM todos WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
UPDATE todos SET completed_at = NOW() WHERE id = 2;

-- Write a DELETE statement to delete all completed todo
DELETE FROM todos WHERE completed_at IS NOT NULL;