/* Captures the average times ran by Athletes whom competed in both 100m and 200m Finals at the NCAA Championships. */
SELECT *,
    AVG(("100m" + "200m") / 2) OVER (PARTITION BY name ORDER BY season) AS avg_time
FROM (
    SELECT
        a.season,
        a.name,
        a.team,
        CAST(MAX(CASE WHEN a.round = 'FINAL' THEN a.time END) AS numeric(10,2)) AS "100m",
        a.wind,
		CAST(MAX(CASE WHEN b.round = 'FINAL' THEN b.time END) AS numeric(10,2)) AS "200m",
        b.wind
    FROM
        vw_m_100 a
    INNER JOIN vw_m_200 b
        ON a.name = b.name
        AND a.team = b.team
        AND a.season = b.season
        AND (a.round = 'FINAL' AND b.round = 'FINAL')
    WHERE
        a.place::integer IN ('1', '2', '3', '4', '5', '6', '7', '8', '9') 
        AND b.place::integer IN ('1', '2', '3', '4', '5', '6', '7', '8', '9') 
    GROUP BY
        a.season,
        a.name,
        a.team,
        a.wind,
        b.wind
) a
ORDER BY
	avg_time,
    a.season,
    a.name,
    a.team;

file:///private/var/folders/3p/6nrkl41d4gx0hl792_m34dq80000gn/T/.dbeaver-temp17356763278548813975/20230621-105402.html