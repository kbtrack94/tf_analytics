import os

# Specify the directory containing the SQL files
directory = 'users/keanebland/Desktop/tf_analytics/data_inserts' 

# Iterate over the SQL files in the directory
for filename in os.listdir(directory):
    if filename.endswith('.sql'):
        # Read the SQL file
        with open(os.path.join(directory, filename), 'r') as file:
            sql_content = file.read()

        # Transform the SQL file content to proper case
        transformed_sql_content = sql_content.title()

        # Write the transformed SQL to a new file
        with open(os.path.join(directory, f"transformed_{filename}"), 'w') as file:
            file.write(transformed_sql_content)
