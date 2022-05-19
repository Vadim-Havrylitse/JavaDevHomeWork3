  ALTER TABLE testgoitdb.developers
  ADD COLUMN salary int;
  
  UPDATE testgoitdb.developers
  SET salary = 12000 
  WHERE id = 1;
  
  UPDATE testgoitdb.developers
  SET salary = 22000 
  WHERE id = 2;
  
  UPDATE testgoitdb.developers
  SET salary = 12000 
  WHERE id = 3;
  
  
