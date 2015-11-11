SELECT DISTINCT mk_sbcode, sb_Name, sm_pcode 
FROM Marks, Subjects, Semesters WHERE sm_grcode = '{7AB5DE81-11B9-459A-B2A0-8F54244DA560}' AND mk_sbcode = sb_pcode AND sm_pcode = mk_smcode 
 AND mk_stcode IN (SELECT st_pcode FROM Students WHERE st_grcode = '{7AB5DE81-11B9-459A-B2A0-8F54244DA560}')
 AND mk_Mounth = '3' AND sm_BYear <= '2007' AND sm_EYear >= '2007' ORDER BY sb_Name;
