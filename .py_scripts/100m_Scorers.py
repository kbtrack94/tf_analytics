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
plt.barh(teams, scores)

# Get the current Axes object and invert the y-axis
ax = plt.gca()
ax.invert_yaxis()

# Add labels for each bar
for i, score in enumerate(scores):
    plt.text(score, i, str(score), ha='left', va='center')

plt.title("Total Points by Team in 100m")
plt.xlabel("Team")
plt.ylabel("Points")

plt.show()
