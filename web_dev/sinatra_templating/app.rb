# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'

end

# add static resources

# Have students listed by campus
get '/students/address' do
	@students = db.execute("SELECT * From students")
	@campuses = db.execute("SELECT * FROM campuses")
	erb :address
end

post '/campuses' do
	db.execute("INSERT INTO campuses (city, state) VALUES (?, ?)", [params['city'], params['state']])
	redirect '/students/address'
end