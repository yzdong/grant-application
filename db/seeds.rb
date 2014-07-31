# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Grant.create([{:name => "Grant1"}, {:name => "Grant2"}, {:name => "Grant3"}])

Field.create([{:name => "field1", :field_type => "Text"},{:name => "field2", :field_type => "Text"},{:name => "field3", :field_type => "Text"}])

Grant.find_by_name("Grant1").fields = [Field.find_by_name("field1"), Field.find_by_name("field2")]
Grant.find_by_name("Grant2").fields = [Field.find_by_name("field2"), Field.find_by_name("field3")]