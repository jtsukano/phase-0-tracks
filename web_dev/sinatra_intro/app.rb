# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters

get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that retrieves an address
get '/contact' do
  "123 Main Street San Francisco, CA 94103"
end

# write a GET route that compliments a person
get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{params[:name]}!"
  else
    "Good Job!"
  end
end

# write a GET route that uses parameters to add
# get '/add/:number_1/plus/:number_2' do
get '/add/:number_1/plus/:number_2' do
  number_1 = params[:number_1]
  number_2 = params[:number_2]
  sum = number_1.to_i + number_2.to_i
  "#{number_1} + #{number_2} = #{sum}"
end


# It looks like Sinatra is one of the web frameworks that are in the form of gems to help ease the web building process. Rails and racks look like other options for this. 
# There seems to be other database options such as ActiveRecord.
# a Web stack is the collection of all the software needed for web development. 