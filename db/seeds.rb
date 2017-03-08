# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#step 1. delete old data

Worklist.destroy_all

#step 2. build new seed data

worklist_list=[
{"title"=>"Ruby CRUD to do list","duedate"=>"2017-03-10","description"=>"Practice crud "},
{"title"=>"Ruby CRUD photo album","duedate"=>"2017-03-12","description"=>"Practice crud "},
{"title"=>"Ruby CRUD blog","duedate"=>"2017-03-14","description"=>"Practice crud "}

]


#step3. build array 

worklist_list.each do |worklist|

	Worklist.create(:title=>worklist["title"],:duedate=>worklist["duedate"],:description=>worklist["description"])

end