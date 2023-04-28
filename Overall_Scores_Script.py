import psycopg2
import matplotlib.pyplot as plt

# Connect to the PostgreSQL database
conn = psycopg2.connect(
        database="tf_analytics"
        , user="tf.admin"
        , password="trackkid"
        , host="localhost"
        , port="5432")

# Define the SQL query
query = """
    with all_champs as (
        select event, round, team, score from ncaa_2015_champs nc union all
        select event, round, team, score from ncaa_2016_champs nc2 union all
        select event, round, team, score from ncaa_2017_champs nc3 union all
        select event, round, team, score from ncaa_2018_champs nc4 union all
        select event, round, team, score from ncaa_2019_champs nc5 union all
        select event, round, team, score from ncaa_2021_champs nc6 union all
        select event, round, team, score from ncaa_2022_champs nc7
    )
    select team, coalesce(sum(score),0) as total_score
    from all_champs
    where event = '100m'
    and round = 'FINAL'
    group by team
    order by total_score desc
"""

# Execute the query and fetch the results
cur = conn.cursor()
cur.execute(query)
results = cur.fetchall()

# Extract the team names and scores from the results
teams = [result[0] for result in results]
scores = [result[1] for result in results]

# Close the cursor and database connection
cur.close()
conn.close()

# Create a bar chart using Matplotlib
plt.bar(teams, scores)
plt.title("Total Scores by Team for 100m Event")
plt.xlabel("Team")
plt.ylabel("Total Score")

# Set the rotation angle of the x-axis labels to 45 degrees
plt.xticks(rotation=45)

plt.show()
