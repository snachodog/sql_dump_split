import re

def split_sql_dump(dump_file):
    try:
        with open(dump_file, 'r', encoding='utf-8') as file:
            current_file = None
            for line in file:
                # Check for the start of a new database
                match = re.search(r'-- Database: `(.+?)`', line)
                if match:
                    # Close the current file if it's open
                    if current_file is not None:
                        current_file.close()
                    
                    # Open a new file named after the database
                    db_name = match.group(1)
                    current_file = open(f"{db_name}.sql", 'w', encoding='utf-8')

                # Write the line to the current file
                if current_file is not None:
                    current_file.write(line)
            
            # Close the last opened file
            if current_file is not None:
                current_file.close()
                
    except IOError as e:
        print(f"An error occurred: {e}")

# Using 'localhost.sql' as the SQL dump file
split_sql_dump('localhost.sql')
