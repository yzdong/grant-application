# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Grant.create([{:name => "Grant1"}, {:name => "Grant2"}, {:name => "Grant3"}])

Field.create([{:name => "requestID", :field_type => "text"},{:name => "title", :field_type => "text"},{:name => "description", :field_type => "text"}, {:name=>"name", :field_type => "text"}])

Grant.find_by_name("Grant1").fields = [Field.find_by_name("requestID"), Field.find_by_name("title"), Field.find_by_name("name")]
Grant.find_by_name("Grant2").fields = [Field.find_by_name("title"), Field.find_by_name("description"), Field.find_by_name("name")]
Grant.find_by_name("Grant3").fields = [Field.find_by_name("requestID"), Field.find_by_name("name")]