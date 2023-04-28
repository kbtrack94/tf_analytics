import psycopg2
import matplotlib.pyplot as plt

# Connect to the PostgreSQL database
conn = psycopg2.connect(
    host="localhost",
    database="tf_analytics",
    user="tf.admin",
    password="trackkid"
)

# Create a cursor object
cur = conn.cursor()

# Execute the SQL query
all_champs_query = """
    with all_champs as (
        select event, team, score from ncaa_2015_champs nc union all
        select event, team, score from ncaa_2016_champs nc2 union all
        select event, team, score from ncaa_2017_champs nc3 union all
        select event, team, score from ncaa_2018_champs nc4 union all
        select event, team, score from ncaa_2019_champs nc5 union all
        select event, team, score from ncaa_2021_champs nc6 union all
        select event, team, score from ncaa_2022_champs nc7
    )
        select team, coalesce(sum(score),0) as total_score
        from all_champs
        where event = '100m'
        group by team
        order by total_score desc
"""
cur.execute(all_champs_query)

# Fetch the results and store them in a list
results = cur.fetchall()

# Close the cursor and database connection
cur.close()
conn.close()

# Process the results to create a bar chart
events = []
teams = []
scores = []

for row in results:
    events.append(row[0])
    teams.append(row[1])
    scores.append(row[2])

fig, ax = plt.subplots()
ax.bar(teams, scores)

# Set the chart title and axis labels
ax.set_title('Total Scores by Event and Team')
ax.set_xlabel('Team')
ax.set_ylabel('Total Score')

# Rotate the x-axis labels for better readability
plt.xticks(rotation=90)

# Display the chart
plt.show()
