# SQL Dump Splitter

## Overview
This Python script is designed to split a large SQL dump file into individual files for each database. It's particularly useful for managing and organizing SQL dumps that contain multiple databases. The script reads through the SQL dump, identifies database sections based on a specific pattern, and creates new SQL files named after each database.

## Features
- **Database Identification**: Automatically detects different databases within a SQL dump.
- **File Creation**: Generates separate SQL files for each database.
- **Efficiency**: Processes large dump files quickly and accurately.

## Getting Started

### Prerequisites
- Python 3.x

### Installation
No additional installation is required for running this script, as it uses standard Python libraries.

### Usage
1. Place the SQL dump file in the same directory as the script, or specify the path to the file.
2. Run the script using Python:

   ```bash
   python sql_dump_splitter.py
   
The script will create separate SQL files for each database in the dump.

### Contributing
Contributions to the SQL Dump Splitter are welcome! Feel free to fork the repository and submit pull requests.
