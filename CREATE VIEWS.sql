/* EVENT VIEWS */
CREATE VIEW M100_VW as
select * from (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_100m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND,  SCORE FROM m_100m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_100m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND,  SCORE FROM m_100m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_100m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND,  SCORE FROM m_100m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_100m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND,  SCORE FROM m_100m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_100m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND,  SCORE FROM m_100m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_100m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND,  SCORE FROM m_100m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_100m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND,  SCORE FROM m_100m_final_2022
    ) as M100
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;


CREATE VIEW M200_VW as
select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_200m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_200m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_200m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_200m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_200m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_200m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_200m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_200m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_200m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_200m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_200m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_200m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_200m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_200m_final_2022
    ) as M200
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;



CREATE VIEW M400_VW as
select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE  FROM m_400m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE  FROM M_400M_FINAL_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM M_400M_SEMIS_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE  FROM M_400M_FINAL_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM M_400M_SEMIS_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE  FROM M_400M_FINAL_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM M_400M_SEMIS_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE  FROM m_400m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE  FROM m_400m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE  FROM m_400m_final_2022
    ) as M400
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;

CREATE VIEW M800_VW as
    select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_800m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_800m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_800m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_800m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_800m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_800m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_800m_final_2022
    ) as M800
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;

CREATE VIEW M1500_VW as
   select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_1500m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_1500m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_1500m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_1500m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_1500m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_1500m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_1500m_final_2022
    ) as M1500
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;

CREATE VIEW M3000m_SC_VW as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_3000m_SC_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_3000m_SC_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_3000m_SC_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_3000m_SC_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_3000m_SC_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_3000m_SC_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_3000m_SC_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_3000m_SC_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_3000m_SC_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_3000m_SC_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_3000m_SC_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_3000m_SC_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_3000m_SC_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_3000m_SC_final_2022
    ) as M300mSC
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW M110H_VW as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_110H_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_110H_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_110H_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_110H_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_110H_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_110H_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_110H_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_110H_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_110H_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_110H_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_110H_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_110H_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", WIND, NULL AS SCORE FROM m_110H_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", WIND, SCORE FROM m_110H_final_2022
    ) as M110H
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW M400H_VW as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_400H_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_400H_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM M_400H_SEMIS_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_400H_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_400H_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_400H_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_400H_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_400H_final_2022
    ) as M400H
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW M5K_VW as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_5K_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_5K_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_5K_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_5K_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_5K_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_5K_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_5K_final_2022
    ) as M5K
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW M10K_VW as
    SELCT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_10K_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_10K_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_10K_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_10K_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_10K_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_10K_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_10K_final_2022
    ) as M10K
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW M4x1_VW as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x1_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x1_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x1_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x1_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x1_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x1_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x1_final_2022
    ) as M4X1
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW M4x4_VW as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x4_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x4_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x4_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x4_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x4_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x4_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, "HEAT(pl)", NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS "HEAT(pl)", NULL AS WIND, SCORE FROM m_4x4_final_2022
    ) as M4X4
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;
