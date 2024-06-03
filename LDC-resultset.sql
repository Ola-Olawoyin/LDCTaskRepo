/* Missing street numbers will be replaced with empty string ''.  
 Missing counts should have a count of zero
 Using COALESCE()
*/

SELECT 
    b.Business,
    COALESCE(p.StreetNo, '') AS StreetNo,
    p.Street,
    p.PostCode,
    COALESCE(SUM(f.Count), 0) AS FootfallCount
FROM 
    Businesses b
JOIN 
    Premises p ON b.Id = p.BusinessId
LEFT JOIN 
    Footfall f ON p.Id = f.PremisesId
GROUP BY 
    b.Business, p.StreetNo, p.Street, p.PostCode
ORDER BY 
    b.Business;
