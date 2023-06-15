import os
import subprocess

def execute_sql_files(directory, username, database_name):
    for filename in os.listdir(directory):
        if filename.endswith(".sql"):
            file_path = os.path.join(directory, filename)
            command = f"psql -U {username} -d {database_name} -f {file_path}"
            subprocess.run(command, shell=True)

# Usage example
sql_directory = "/Users/keanebland/desktop/tf_analytics/data_inserts"  # Replace with the path to the directory containing your SQL files
db_username = "tf.admin"  # Replace with your PostgreSQL username
db_name = "tf_analytics"  # Replace with your PostgreSQL database name
execute_sql_files(sql_directory, db_username, db_name)
