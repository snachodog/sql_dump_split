# SQL Dump Splitter

## Overview
This project offers tools to split a large SQL dump file into individual files for each database. It includes both a Python script and a Windows batch file to accommodate different user preferences and environments. The tools are designed to efficiently process SQL dumps, identify different databases, and create separate SQL files for each database.

## Features
- **Multiple Script Options**: Python script for versatility and a Windows batch file for ease of use in Windows environments.
- **Database Identification**: Automatically detects different databases within a SQL dump.
- **File Creation**: Generates separate SQL files for each database.
- **User-Friendly**: Easy to use, catering to both Python and non-Python users.

## Getting Started

### Prerequisites
- Python 3.x (for the Python script)
- Windows OS (for the batch file)

### Installation
No additional installation is required for running these scripts, as they use standard libraries and Windows commands.

### Usage

#### Using the Python Script
1. Place the SQL dump file in the same directory as the script or specify the file path.
2. Run the script using Python:
   ```bash
   python sql_dump_splitter.py
   ```
Using the Batch File
Ensure the SQL dump file is in the same directory as the batch file.

Simply double-click the batch file or run it in a command prompt:
   ```bash
   sql_dump_splitter.bat
   ```
Both scripts will create separate SQL files for each database in the dump.

### Contributing
Contributions to the SQL Dump Splitter are welcome! Feel free to fork the repository and submit pull requests.

### Acknowledgements
Part of these scripts may have been created using LLMs such as ChatGPT or Google's Bard.
