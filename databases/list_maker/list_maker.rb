# Create application that will allow users to enter items and add them to a database

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("groceries.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS groceries(
		id INTEGER PRIMARY KEY,
		item VARCHAR(255),
		quantity INT
	)
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO groceries (item, quantity) VALUES ('carrots', 3)")

def add_item(db, item, quantity)
	db.execute("INSERT INTO groceries (item, quantity) VALUES (?, ?)",[item, quantity]) 	
end

add_item(db, "pancake mix", 3)
