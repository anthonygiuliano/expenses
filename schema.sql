CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric (6,2) NOT NULL,
  memo varchar NOT NULL,
  created_on date NOT NULL DEFAULT CURRENT_DATE
);

ALTER TABLE expenses ADD CHECK (amount > 0);

INSERT INTO expenses (amount, memo, created_on) VALUES (14.56, 'Pencils', NOW()), (3.29, 'Coffee', NOW());
INSERT INTO expenses (amount, memo) VALUES (49.99, 'Text Editor');
