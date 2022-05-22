ALTER TABLE projects
ADD COLUMN cost bigint not NULL;

UPDATE projects 
SET cost = 12500
WHERE id = 2;

UPDATE projects 
SET cost = 230000
WHERE id = 1;

UPDATE projects 
SET cost = 12500
WHERE id = 3;
