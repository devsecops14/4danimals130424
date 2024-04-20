#!/bin/sh
# Check if the SQLite database exists
if [ ! -f "$DATABASE_PATH" ]; then
  # If the database does not exist, run the Python script to create it
  echo "Database not found, creating..."
  python /create_sql_db_using_python.py
fi

# Continue to the main container command
exec "$@"
