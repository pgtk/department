SELECT DISTINCT mk_sbcode, sb_Name, sm_pcode 
FROM Marks, Subjects, Semesters WHERE sm_grcode = '{02B21284-C411-4580-95A3-877D48632F37}' AND mk_sbcode = sb_pcode AND sm_pcode = mk_smcode 
 AND mk_stcode IN (SELECT st_pcode FROM Students WHERE st_grcode = '{02B21284-C411-4580-95A3-877D48632F37}')
 AND mk_Mounth = '3' AND sm_BYear <= '2007' AND sm_EYear >= '2007' ORDER BY sb_Name;
