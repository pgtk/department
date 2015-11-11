SELECT ([sp_Key]+' бюджет') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsCommercial = 0 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
GROUP BY sp_Key
UNION SELECT ([sp_Key]+' внебюджет') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsCommercial = 1 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
GROUP BY sp_Key
UNION SELECT ([sp_Key]+' мужского пола') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsMale = 1 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
GROUP BY sp_Key
UNION SELECT ([sp_Key]+' женского пола') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsMale = 0 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
GROUP BY sp_Key
UNION SELECT ('Итого бюджет') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsCommercial = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
UNION SELECT ('Итого внебюджет') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsCommercial = 1 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
UNION SELECT ('Студентов мужского пола') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsMale = 1 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
UNION SELECT ('Студенток женского пола') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND st_IsMale = 0 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
UNION SELECT ('Общий итог') AS sp_Key,
SUM(CASE gr_Course WHEN 1 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 2 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 3 THEN 1 ELSE 0 END),
SUM(CASE gr_Course WHEN 4 THEN 1 ELSE 0 END),
COUNT(st_Name)
FROM Specialities, Groups, Students
WHERE sp_pcode = gr_speccode AND gr_pcode = st_grcode
AND st_Attributes = 0 AND gr_isZaoch = 0
AND sp_depcode = '{1F068E8C-23BE-4198-951D-D9E1EB6AB4DF}'
ORDER BY sp_Key;
