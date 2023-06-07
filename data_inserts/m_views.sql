/* EVENT VIEWS */
CREATE VIEW VW_M_100 as
select * from (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_100m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND,  SCORE FROM m_100m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_100m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND,  SCORE FROM m_100m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_100m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND,  SCORE FROM m_100m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_100m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND,  SCORE FROM m_100m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_100m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND,  SCORE FROM m_100m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_100m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND,  SCORE FROM m_100m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_100m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND,  SCORE FROM m_100m_final_2022
    ) as M100
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;


CREATE VIEW VW_M_200 as
select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_200m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_200m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_200m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_200m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_200m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_200m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_200m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_200m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_200m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_200m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_200m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_200m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_200m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_200m_final_2022
    ) as M200
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;



CREATE VIEW VW_M_400 as
select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE  FROM m_400m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE  FROM M_400M_FINAL_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM M_400M_SEMIS_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE  FROM M_400M_FINAL_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM M_400M_SEMIS_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE  FROM M_400M_FINAL_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM M_400M_SEMIS_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE  FROM m_400m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE  FROM m_400m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE  FROM m_400m_final_2022
    ) as M400
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;

CREATE VIEW VW_M_800 as
    select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_800m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_800m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_800m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_800m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_800m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_800m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_800m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_800m_final_2022
    ) as M800
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;

CREATE VIEW VW_M_1500 as
   select * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_1500m_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_1500m_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_1500m_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_1500m_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_1500m_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_1500m_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_1500m_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_1500m_final_2022
    ) as M1500
ORDER BY CASE
        WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
        ELSE 999999
        END,
        time;

CREATE VIEW VW_M_3000mSC as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_3000mSC_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_3000mSC_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_3000mSC_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_3000mSC_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_3000mSC_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_3000mSC_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_3000mSC_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_3000mSC_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_3000mSC_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_3000mSC_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_3000mSC_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_3000mSC_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_3000mSC_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_3000mSC_final_2022
    ) as M300mSC
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW VW_M_110H as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_110H_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_110H_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_110H_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_110H_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_110H_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_110H_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_110H_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_110H_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_110H_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_110H_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_110H_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_110H_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, WIND, NULL AS SCORE FROM m_110H_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, WIND, SCORE FROM m_110H_final_2022
    ) as M110H
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW VW_M_400H as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_400H_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_400H_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM M_400H_SEMIS_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_400H_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_400H_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_400H_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_400H_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_400H_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_400H_final_2022
    ) as M400H
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW VW_M_5K as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_5K_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_5K_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_5K_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_5K_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_5K_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_5K_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_5K_final_2022
    ) as M5K
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW VW_M_10K as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_10K_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_10K_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_10K_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_10K_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_10K_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_10K_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, YEAR, TEAM, TIME, TIME_DETAIL, null as REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_10K_final_2022
    ) as M10K
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW VW_M_4x1 as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x1_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x1_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x1_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x1_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x1_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x1_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x1_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x1_final_2022
    ) as M4X1
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW VW_M_4x4 as
    SELECT * FROM (
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x4_final_2015 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x4_final_2016 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x4_final_2017 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x4_final_2018 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x4_final_2019 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x4_final_2021 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, QUALIFIER, heat_pl, NULL AS WIND, NULL AS SCORE FROM m_4x4_semis_2022 UNION ALL
    SELECT EVENT, SEASON, ROUND, PLACE, NAME, null as YEAR, TEAM, TIME, TIME_DETAIL, REACTION_TIME, NULL AS QUALIFIER, NULL AS heat_pl, NULL AS WIND, SCORE FROM m_4x4_final_2022
    ) as M4X4
ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

CREATE VIEW VW_M_TJ_final as (
   select * from (
        select * from M_TJ_final_2015 union all
        select * from M_TJ_final_2016 union all
        select * from M_TJ_final_2017 union all
        select * from M_TJ_final_2018 union all
        select * from M_TJ_final_2019 union all
        select * from M_TJ_final_2021 union all
        select * from M_TJ_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
);

CREATE VIEW VW_M_HJ_final as (
    select * from  (
        select * from M_HJ_final_2015 union all
        select * from M_HJ_final_2016 union all
        select * from M_HJ_final_2017 union all
        select * from M_HJ_final_2018 union all
        select * from M_HJ_final_2019 union all
        select * from M_HJ_final_2021 union all
        select * from M_HJ_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
);

CREATE VIEW VW_M_LJ_final as (
    select * from (
        select * from M_LJ_final_2015 union all
        select * from M_LJ_final_2016 union all
        select * from M_LJ_final_2017 union all
        select * from M_LJ_final_2018 union all
        select * from M_LJ_final_2019 union all
        select * from M_LJ_final_2021 union all
        select * from M_LJ_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
  );

CREATE VIEW VW_M_SP_final as (
    select * from (
        select * from M_SP_final_2015 union all
        select * from M_SP_final_2016 union all
        select * from M_SP_final_2017 union all
        select * from M_SP_final_2018 union all
        select * from M_SP_final_2019 union all
        select * from M_SP_final_2021 union all
        select * from M_SP_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
);

CREATE VIEW VW_M_DT_final as (
    select * from (
        select * from M_DT_final_2015 union all
        select * from M_DT_final_2016 union all
        select * from M_DT_final_2017 union all
        select * from M_DT_final_2018 union all
        select * from M_DT_final_2019 union all
        select * from M_DT_final_2021 union all
        select * from M_DT_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
);

CREATE VIEW VW_M_HT_final as (
    select * from (    
        select * from M_HT_final_2015 union all
        select * from M_HT_final_2016 union all
        select * from M_HT_final_2017 union all
        select * from M_HT_final_2018 union all
        select * from M_HT_final_2019 union all
        select * from M_HT_final_2021 union all
        select * from M_HT_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
);

CREATE VIEW VW_M_PV_final as (
    select * from (
        select * from M_PV_final_2015 union all
        select * from M_PV_final_2016 union all
        select * from M_PV_final_2017 union all
        select * from M_PV_final_2018 union all
        select * from M_PV_final_2019 union all
        select * from M_PV_final_2021 union all
        select * from M_PV_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
);

CREATE VIEW VW_M_JT_final as (
    select * from (
    select * from M_JT_final_2015 union all
    select * from M_JT_final_2016 union all
    select * from M_JT_final_2017 union all
    select * from M_JT_final_2018 union all
    select * from M_JT_final_2019 union all
    select * from M_JT_final_2021 union all
    select * from M_JT_final_2022
) mark
ORDER BY 
  CASE 
    WHEN mark ~ '^[0-9\.]+$' THEN CAST(mark AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  mark desc
  );

CREATE VIEW VW_M_DEC_final as (
    select * from (
    select * from M_DEC_final_2015 union all
    select * from M_DEC_final_2016 union all
    select * from M_DEC_final_2017 union all
    select * from M_DEC_final_2018 union all
    select * from M_DEC_final_2019 union all
    select * from M_DEC_final_2021 union all
    select * from M_DEC_final_2022
) dec
ORDER BY 
  CASE 
    WHEN points ~ '^[0-9\.]+$' THEN CAST(points AS FLOAT) 
    ELSE NULL 
  END DESC NULLS LAST, 
  points desc
  );
  

/* ORDERED ADDTIONAL VIEWS */
/* Fastest time by year */
select * from (
	SELECT *, MIN(place) OVER(PARTITION BY TEAM) AS LOWEST_place
	FROM VW_M_4x4
	) as best_finish
where lowest_place = place
and upper(round) = 'FINAL';

/*Fastest time ran by each Team */
select * from (
	SELECT *, MIN(TIME) OVER(PARTITION BY TEAM) AS LOWEST_TIME
	FROM VW_M_4x4
	) as TEAM_FASTEST
where lowest_time = time;

/*Fastest time ran at all NCAA's */
select * from (
	SELECT *, row_number() OVER(PARTITION BY TEAM) AS rnum
	FROM VW_M_4x4
	) as TEAM_FASTEST
where rnum = 1
	ORDER BY CASE
         WHEN time ~ '^[0-9\.]+$' THEN CAST(time AS FLOAT)
         ELSE 999999
         END,
         time;

