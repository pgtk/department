SELECT st_Name AS StName, 
(SELECT cpv_Mark FROM CpView
 WHERE (cpv_sbcode = '{A0566E3A-C72A-46E2-AF8B-B448AE734AEC}') AND (cpv_stcode = st_pcode)
 AND (cpv_smcode = sm_pcode)) AS Ch1, 
(SELECT cpv_Mark FROM CpView
 WHERE (cpv_sbcode = '{2206C252-51CF-4791-9DEC-FCA944B0BB9E}') AND (cpv_stcode = st_pcode)
 AND (cpv_smcode = sm_pcode)) AS Ch2, 
(SELECT cpv_Mark FROM CpView
 WHERE (cpv_sbcode = '{9EB91BC9-1BA8-42EE-B3E3-DD51EBC219EB}') AND (cpv_stcode = st_pcode)
 AND (cpv_smcode = sm_pcode)) AS Ch3, 
(SELECT cpv_Mark FROM CpView
 WHERE (cpv_sbcode = '{D1354BAD-5D9D-4291-920F-81B46E6025B9}') AND (cpv_stcode = st_pcode)
 AND (cpv_smcode = sm_pcode)) AS Ch4, 
(SELECT cpv_Mark FROM CpView
 WHERE (cpv_sbcode = '{F1AD83F3-6C8C-4A18-9AC2-1D0519648E60}') AND (cpv_stcode = st_pcode)
 AND (cpv_smcode = sm_pcode)) AS Ch5, 
(SELECT cpv_Mark FROM CpView
 WHERE (cpv_sbcode = '{8CAC903B-AEEE-4CE9-BDE9-4276444B3AB5}') AND (cpv_stcode = st_pcode)
 AND (cpv_smcode = sm_pcode)) AS Ch6, 
(SELECT cpv_Mark FROM CpView
 WHERE (cpv_sbcode = '{3CBFA96A-2714-4688-95C3-AE85FE6332E6}') AND (cpv_stcode = st_pcode)
 AND (cpv_smcode = sm_pcode)) AS Ch7, 
(SELECT exv_Mark FROM ExView 
 WHERE (exv_sbcode = '{CC97D379-64A6-4853-8232-A7F803FC35CE}') AND (exv_stcode = st_pcode)
 AND (exv_smcode = sm_pcode)) AS Ex1, 
(SELECT pkv_Mark FROM PkView 
 WHERE (pkv_pkcode = '{EC40F879-025B-41AA-863C-CF802672E540}') AND (pkv_stcode = st_pcode)
 AND (pkv_smcode = sm_pcode)) AS Oth1, 
(SELECT pkv_Mark FROM PkView 
 WHERE (pkv_pkcode = '{3D60DE19-A80A-4125-A957-DF37D7B265ED}') AND (pkv_stcode = st_pcode)
 AND (pkv_smcode = sm_pcode)) AS Oth2, 
(SELECT pkv_Mark FROM PkView 
 WHERE (pkv_pkcode = '{D5A807D5-AEBB-4FDD-9BB7-9B882F72961E}') AND (pkv_stcode = st_pcode)
 AND (pkv_smcode = sm_pcode)) AS Oth3, 
(SELECT cwv_Mark FROM CwView 
 WHERE (cwv_cwcode = '{F9B3EEA3-B4D9-46B9-9022-2AC2C6A0C348}') AND (cwv_stcode = st_pcode)
 AND (cwv_smcode = sm_pcode)) AS Oth3, 
(SELECT SUM(swm_Legal) FROM StWeekMissings
  WHERE (swm_date <= sm_EDate) AND (swm_date >= sm_BDate) AND (swm_stcode = st_pcode)) AS stm_legal,
(SELECT SUM(swm_illegal) FROM StWeekMissings
  WHERE (swm_date <= sm_EDate) AND (swm_date >= sm_BDate) AND (swm_stcode = st_pcode)) AS stm_illegal,
(SELECT SUM(swm_all) FROM StWeekMissings
  WHERE (swm_date <= sm_EDate) AND (swm_date >= sm_BDate) AND (swm_stcode = st_pcode)) AS stm_all
FROM Students, Semesters
WHERE (st_grcode = '{43CB9FBA-68A9-4761-822C-1939572906E4}') AND (sm_Number = '6')
AND (sm_grcode = st_grcode) AND (st_Attributes = 0)
ORDER BY st_Name;
