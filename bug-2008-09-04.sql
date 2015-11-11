SELECT st_FName, st_MName, st_LName, gr_Name,
 pl_FullName, st_StudNumber, st_Address FROM Students, Groups, Places 
WHERE (st_Attributes = 0) AND (st_grcode = gr_pcode) 
AND (st_plcode != '{639E720B-31B3-48E9-996A-7D72D62E0775}') AND (st_plcode = pl_pcode)
AND (gr_speccode IN (SELECT sp_pcode FROM Specialities 
WHERE sp_depcode = '{54A5BE42-03C3-4985-9F50-A196F7BFFA9A}')) ORDER BY gr_Name, st_Name;
