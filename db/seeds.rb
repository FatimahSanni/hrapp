# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

staff = ["Tijani", "Fatimah", "Alarape", "Frances", "Dolapo", "Aiyeyemitan", "Ogunro", "Eunice Ogunkelu", "Brenda", "Blankson"]
staff.each do |s|
	Staff.where(name: s).first_or_create
end
