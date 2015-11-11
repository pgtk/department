SELECT st_Name, st_FullName, st_pcode, 
MAX(CASE mk_sbcode 
 WHEN '{7D7D90F2-17AC-4FE5-840A-77F077BE7E65}' THEN mk_Mark
 ELSE 0 END) AS Sb1, 
MAX(CASE mk_sbcode 
 WHEN '{F01CDEA8-156A-49EF-8339-9D34224EBAA3}' THEN mk_Mark
 ELSE 0 END) AS Sb2, 
MAX(CASE mk_sbcode 
 WHEN '{2206C252-51CF-4791-9DEC-FCA944B0BB9E}' THEN mk_Mark
 ELSE 0 END) AS Sb3, 
MAX(CASE mk_sbcode 
 WHEN '{0755ADA6-D335-437C-93CA-30B8209CA008}' THEN mk_Mark
 ELSE 0 END) AS Sb4, 
MAX(CASE mk_sbcode 
 WHEN '{4FAA11DE-9BE0-426C-9097-EBAC82160ADC}' THEN mk_Mark
 ELSE 0 END) AS Sb5, 
MAX(CASE mk_sbcode 
 WHEN '{FC8A1AA1-1AE2-4414-82D8-DCFCE69BC2C0}' THEN mk_Mark
 ELSE 0 END) AS Sb6, 
MAX(CASE mk_sbcode 
 WHEN '{5D90D698-765E-4EC9-ADB5-DC48672C6F76}' THEN mk_Mark
 ELSE 0 END) AS Sb7, 
MAX(CASE mk_sbcode 
 WHEN '{5E7F3187-64B4-444F-BE3B-8A6F121AF036}' THEN mk_Mark
 ELSE 0 END) AS Sb8, 
MAX(CASE mk_sbcode 
 WHEN '{910FF004-9CC4-4A25-A884-EE4F8F019716}' THEN mk_Mark
 ELSE 0 END) AS Sb9, 
MAX(CASE mk_sbcode 
 WHEN '{A4556066-B793-45A4-9926-D9DD9D7721DC}' THEN mk_Mark
 ELSE 0 END) AS Sb10, 
MAX(CASE mk_sbcode 
 WHEN '{6DAA9989-4DFA-4CED-B557-CC075C7B6620}' THEN mk_Mark
 ELSE 0 END) AS Sb11, 
MAX(CASE mk_sbcode 
 WHEN '{F26781F8-7202-490F-9EC3-D142185FAF73}' THEN mk_Mark
 ELSE 0 END) AS Sb12, 
MAX(CASE mk_sbcode 
 WHEN '{78B601D5-F36C-4BC0-B10A-186C5CD95673}' THEN mk_Mark
 ELSE 0 END) AS Sb13, 
(SELECT SUM(swm_legal) FROM StWeekMissings WHERE (mk_stcode = swm_stcode) AND (mk_mounth = swm_mounth) AND (mk_Year = swm_Year)) AS smm_legal,
(SELECT SUM(swm_illegal) FROM StWeekMissings WHERE (mk_stcode = swm_stcode) AND (mk_mounth = swm_mounth) AND (mk_Year = swm_Year)) AS smm_illegal,
(SELECT SUM(swm_all) FROM StWeekMissings WHERE (mk_stcode = swm_stcode) AND (mk_mounth = swm_mounth) AND (mk_Year = swm_Year)) AS smm_all
FROM Students, Marks, subjects
WHERE (st_grcode = '{6A9475DC-0B50-4D4A-91F7-1512D4DAE83F}')
AND (mk_stcode = st_pcode) AND (mk_sbcode = sb_pcode) AND (mk_smcode IN (SELECT sm_pcode FROM Semesters WHERE sm_grcode = '{6A9475DC-0B50-4D4A-91F7-1512D4DAE83F}')) AND (mk_Year = 2013) AND (mk_mounth = 4)
GROUP BY st_Name, st_FullName, st_pcode,  mk_stcode, mk_year, mk_mounth
ORDER BY st_FullName;
