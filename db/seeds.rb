# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Wedding.destroy_all
WeddingAccess.destroy_all
Spouse.destroy_all
Guest.destroy_all
Family.destroy_all
Desk.destroy_all
GuestDesk.destroy_all
puts "Database cleaned!"

puts "Creating users..."
user1 = User.new({email: "lenny@yopmail.com", password: "123456"})
user1.save!
puts "Users created!"

puts "Creating weddings..."
wedding1 = Wedding.new({day: (Date.today + 30.days), city_hall: "Mairie de La Ciotat"})
wedding1.save!
puts "Weddings created!"

puts "Creating weddings accesses..."
weddingaccess1 = WeddingAccess.new({user: user1, wedding: wedding1})
weddingaccess1.save!
puts "Weddings accesses created!"

puts "Creating spouses..."
spouse1 = Spouse.new({first_name: "Jean", last_name: "LEGROS", gender: "male", wedding: wedding1})
spouse1.save!
spouse2 = Spouse.new({first_name: "Lucie", last_name: "PETIT", gender: "female", wedding: wedding1})
spouse2.save!
puts "Spouses created!"

puts "Creating desks..."
desk1 = Desk.new({name: "Table fleurie", capacity: 6, shape: "ronde", wedding: wedding1})
desk1.save!
desk2 = Desk.new({name: "Table jolie", capacity: 8, shape: "rectangulaire", wedding: wedding1})
desk2.save!
puts "Desks created!"

puts "Creating families..."
family1 = Family.new({name: "Famille MARTIN", email: "martin@yopmail.com"})
family1.save!
family2 = Family.new({name: "Famille LEGRAND", email: "legrand@yopmail.com"})
family2.save!
puts "Families created!"

puts "Creating guests..."
guest1 = Guest.new({first_name: "Marc", last_name: "MARTIN", gender: "male", age_category: 30, witness: false, status: 1, family: family1, spouse: spouse1})
guest1.save!
guest2 = Guest.new({first_name: "Jeannot", last_name: "MARTIN", gender: "male", age_category: 50, witness: false, status: 2, family: family1, spouse: spouse1})
guest2.save!
guest3 = Guest.new({first_name: "Marie", last_name: "LEGRAND", gender: "female", age_category: 40, witness: true, status: 1, family: family2, spouse: spouse2})
guest3.save!
guest4 = Guest.new({first_name: "Julien", last_name: "LEGRAND", gender: "male", age_category: 30, witness: false, status: 1, family: family2, spouse: spouse2})
guest4.save!
puts "Guests created!"

puts "Creating guest desks..."
guestdesk1 = GuestDesk.new({guest: guest1, desk: desk1})
guestdesk1.save!
guestdesk2 = GuestDesk.new({guest: guest2, desk: desk1})
guestdesk2.save!
guestdesk3 = GuestDesk.new({guest: guest3, desk: desk2})
guestdesk3.save!
guestdesk4 = GuestDesk.new({guest: guest4, desk: desk2})
guestdesk4.save!
puts "Guest desks created!"

# Date.today
# Date.new(1991, 12, 28)
# Date.today - 7.days
