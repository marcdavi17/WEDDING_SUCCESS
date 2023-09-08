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
user1 = User.new({email: "lucie@yopmail.com", password: "123456"})
user1.save!
puts "Users created!"

puts "Creating weddings..."
wedding1 = Wedding.new({day: (Date.today + 9.days), city_hall: "Mairie de La Ciotat"})
wedding1.save!
puts "Weddings created!"

puts "Creating weddings accesses..."
weddingaccess1 = WeddingAccess.new({user: user1, wedding: wedding1})
weddingaccess1.save!
puts "Weddings accesses created!"

puts "Creating spouses..."
spouse1 = Spouse.new({first_name: "Jean", last_name: "LEGROS", gender: "man", wedding: wedding1})
spouse1.save!
spouse2 = Spouse.new({first_name: "Lucie", last_name: "PETIT", gender: "woman", wedding: wedding1})
spouse2.save!
puts "Spouses created!"

puts "Creating desks..."
desk1 = Desk.new({name: "Iris", capacity: 6, shape: "Round", wedding: wedding1})
desk1.save!
desk2 = Desk.new({name: "Lys", capacity: 8, shape: "Round", wedding: wedding1})
desk2.save!
desk3 = Desk.new({name: "Rose", capacity: 10, shape: "Rectangular", wedding: wedding1})
desk3.save!
desk4 = Desk.new({name: "Coquelicot", capacity: 12, shape: "Round", wedding: wedding1})
desk4.save!
desk5 = Desk.new({name: "Pivoine", capacity: 8, shape: "Rectangular", wedding: wedding1})
desk5.save!
desk6 = Desk.new({name: "Tulipe", capacity: 12, shape: "Rectangular", wedding: wedding1})
desk6.save!
puts "Desks created!"

puts "Creating families..."
family1 = Family.new({name: "Martin", email: "martin@yopmail.com"})
family1.save!
family2 = Family.new({name: "Legrand", email: "legrand@hotmail.com"})
family2.save!
family3 = Family.new({name: "Legros", email: "legros@yopmail.com"})
family3.save!
family4 = Family.new({name: "Lepetit", email: "lepetit@yopmail.com"})
family4.save!
family5 = Family.new({name: "Lebel", email: "lebel@hotmail.com"})
family5.save!
family6 = Family.new({name: "Lelouche", email: "lelouche@yopmail.com"})
family6.save!
family7 = Family.new({name: "Bernard", email: "bernard@yopmail.com"})
family7.save!
family8 = Family.new({name: "Durand", email: "durand@gmail.com"})
family8.save!
family9 = Family.new({name: "Moreau", email: "legros@gmail.com"})
family9.save!
family10 = Family.new({name: "Amis d'enfance", email: "laurent@gmail.com"})
family10.save!
family11 = Family.new({name: "Leroy", email: "leroy@icloud.com"})
family11.save!
family12 = Family.new({name: "Copains du Wagon", email: "tim@gmail.com"})
family12.save!
family13 = Family.new({name: "Dubois", email: "lepetit@gmail.com"})
family13.save!
family14 = Family.create({name: "Epoux", email: "lepetit@gmail.com"})
puts "Families created!"

puts "Creating guests..."
guest_spouse_1 = Guest.create(first_name: spouse1.first_name, last_name: spouse1.last_name, gender: spouse1.gender, age_category: 30, witness: false, family: family14, spouse: spouse1 )
guest_spouse_2 = Guest.create(first_name: spouse2.first_name, last_name: spouse2.last_name, gender: spouse2.gender, age_category: 30, witness: false, family: family14, spouse: spouse2 )

guest1 = Guest.new({first_name: "Marc", last_name: "MARTIN", gender: "man", age_category: 30, witness: false, status: 1, family: family1, spouse: spouse1})
guest1.save!
guest2 = Guest.new({first_name: "Monique", last_name: "MARTIN", gender: "woman", age_category: 50, witness: false, status: 2, family: family1, spouse: spouse1})
guest2.save!
guest3 = Guest.new({first_name: "Marie", last_name: "LEGRAND", gender: "woman", age_category: 40, witness: false, status: 1, family: family2, spouse: spouse2})
guest3.save!
guest4 = Guest.new({first_name: "Julien", last_name: "LEGRAND", gender: "man", age_category: 30, witness: false, status: 1, family: family2, spouse: spouse1})
guest4.save!
guest5 = Guest.new({first_name: "Thomas", last_name: "MARTIN", gender: "man", age_category: 30, witness: false, status: 1, family: family1, spouse: spouse2})
guest5.save!
guest6 = Guest.new({first_name: "Nathalie", last_name: "LEGROS", gender: "woman", age_category: 30, witness: false, status: 1, family: family3, spouse: spouse1})
guest6.save!
guest7 = Guest.new({first_name: "Jacques", last_name: "LEGROS", gender: "man", age_category: 50, witness: false, status: 2, family: family3, spouse: spouse1})
guest7.save!
guest8 = Guest.new({first_name: "Sophie", last_name: "LEGROS", gender: "woman", age_category: 40, witness: false, status: 1, family: family3, spouse: spouse2})
guest8.save!
guest9 = Guest.new({first_name: "Louis", last_name: "LEGROS", gender: "man", age_category: 30, witness: false, status: 1, family: family3, spouse: spouse2})
guest9.save!
guest10 = Guest.new({first_name: "Françoise", last_name: "LEPETIT", gender: "woman", age_category: 30, witness: false, status: 1, family: family4, spouse: spouse2})
guest10.save!

guest11 = Guest.new({first_name: "Pierre", last_name: "LEBEL", gender: "man", age_category: 30, witness: false, status: 1, family: family5, spouse: spouse1})
guest11.save!
guest12 = Guest.new({first_name: "Michel", last_name: "LEBEL", gender: "man", age_category: 50, witness: false, status: 2, family: family5, spouse: spouse1})
guest12.save!
guest13 = Guest.new({first_name: "Nicole", last_name: "LELOUCHE", gender: "woman", age_category: 40, witness: false, status: 1, family: family6, spouse: spouse2})
guest13.save!
guest14 = Guest.new({first_name: "André", last_name: "LELOUCHE", gender: "man", age_category: 30, witness: false, status: 1, family: family6, spouse: spouse1})
guest14.save!
guest15 = Guest.new({first_name: "Suzanne", last_name: "LELOUCHE", gender: "woman", age_category: 30, witness: false, status: 1, family: family6, spouse: spouse2})
guest15.save!
guest16 = Guest.new({first_name: "Philippe", last_name: "BERNARD", gender: "man", age_category: 30, witness: false, status: 1, family: family7, spouse: spouse1})
guest16.save!
guest17 = Guest.new({first_name: "Louis", last_name: "DURAND", gender: "man", age_category: 50, witness: false, status: 2, family: family8, spouse: spouse1})
guest17.save!
guest18 = Guest.new({first_name: "Martine", last_name: "DURAND", gender: "woman", age_category: 40, witness: false, status: 1, family: family8, spouse: spouse2})
guest18.save!
guest19 = Guest.new({first_name: "René", last_name: "MOREAU", gender: "man", age_category: 30, witness: false, status: 1, family: family9, spouse: spouse2})
guest19.save!
guest20 = Guest.new({first_name: "Anne", last_name: "MOREAU", gender: "woman", age_category: 30, witness: false, status: 1, family: family9, spouse: spouse2})
guest20.save!

guest21 = Guest.new({first_name: "Sylvie", last_name: "BLANC", gender: "woman", age_category: 30, witness: false, status: 1, family: family10, spouse: spouse1})
guest21.save!
guest22 = Guest.new({first_name: "Bernard", last_name: "GUERIN", gender: "man", age_category: 50, witness: false, status: 2, family: family10, spouse: spouse1})
guest22.save!
guest23 = Guest.new({first_name: "Isabelle", last_name: "BOYER", gender: "woman", age_category: 40, witness: false, status: 1, family: family10, spouse: spouse2})
guest23.save!
guest24 = Guest.new({first_name: "Marcel", last_name: "LEROY", gender: "man", age_category: 30, witness: false, status: 1, family: family11, spouse: spouse1})
guest24.save!
guest25 = Guest.new({first_name: "Jacqueline", last_name: "LEROY", gender: "woman", age_category: 30, witness: false, status: 1, family: family11, spouse: spouse2})
guest25.save!
guest26 = Guest.new({first_name: "Paul", last_name: "LEROY", gender: "man", age_category: 30, witness: false, status: 1, family: family11, spouse: spouse1})
guest26.save!
guest27 = Guest.new({first_name: "Roger", last_name: "ROBIN", gender: "man", age_category: 50, witness: false, status: 2, family: family12, spouse: spouse1})
guest27.save!
guest28 = Guest.new({first_name: "Hélène", last_name: "MEUNIER", gender: "woman", age_category: 40, witness: false, status: 1, family: family12, spouse: spouse2})
guest28.save!
guest29 = Guest.new({first_name: "Julien", last_name: "DUBOIS", gender: "woman", age_category: 30, witness: false, status: 1, family: family13, spouse: spouse2})
guest29.save!
guest30 = Guest.new({first_name: "Claude", last_name: "DUBOIS", gender: "man", age_category: 30, witness: false, status: 1, family: family13, spouse: spouse2})
guest30.save!

guest31 = Guest.new({first_name: "Henri", last_name: "DUBOIS", gender: "man", age_category: 30, witness: false, status: 1, family: family13, spouse: spouse1})
guest31.save!
guest32 = Guest.new({first_name: "Christian", last_name: "BLANCHARD", gender: "man", age_category: 50, witness: false, status: 2, family: family12, spouse: spouse1})
guest32.save!
guest33 = Guest.new({first_name: "Christine", last_name: "GRONDIN", gender: "woman", age_category: 40, witness: false, status: 1, family: family12, spouse: spouse2})
guest33.save!
guest34 = Guest.new({first_name: "Louise", last_name: "MARTIN", gender: "woman", age_category: 30, witness: false, status: 1, family: family1, spouse: spouse1})
guest34.save!
guest35 = Guest.new({first_name: "Nicolas", last_name: "LEGRAND", gender: "man", age_category: 30, witness: false, status: 1, family: family2, spouse: spouse2})
guest35.save!
guest36 = Guest.new({first_name: "Georges", last_name: "LEGROS", gender: "man", age_category: 30, witness: false, status: 1, family: family3, spouse: spouse1})
guest36.save!
guest37 = Guest.new({first_name: "Daniel", last_name: "LEPETIT", gender: "man", age_category: 50, witness: false, status: 2, family: family4, spouse: spouse1})
guest37.save!
guest38 = Guest.new({first_name: "Christiane", last_name: "LEBEL", gender: "woman", age_category: 40, witness: false, status: 1, family: family5, spouse: spouse2})
guest38.save!
guest39 = Guest.new({first_name: "Denise", last_name: "LELOUCHE", gender: "woman", age_category: 30, witness: false, status: 1, family: family6, spouse: spouse2})
guest39.save!
guest40 = Guest.new({first_name: "Victor", last_name: "BERNARD", gender: "man", age_category: 30, witness: false, status: 1, family: family7, spouse: spouse2})
guest40.save!

guest41 = Guest.new({first_name: "Madeleine", last_name: "DURAND", gender: "woman", age_category: 30, witness: false, status: 1, family: family8, spouse: spouse1})
guest41.save!
guest42 = Guest.new({first_name: "Gautier", last_name: "MOREAU", gender: "man", age_category: 50, witness: false, status: 2, family: family9, spouse: spouse1})
guest42.save!
guest43 = Guest.new({first_name: "Jeanne", last_name: "CHEVALIER", gender: "woman", age_category: 40, witness: false, status: 1, family: family10, spouse: spouse2})
guest43.save!
guest44 = Guest.new({first_name: "François", last_name: "LEROY", gender: "man", age_category: 30, witness: false, status: 1, family: family11, spouse: spouse1})
guest44.save!
guest45 = Guest.new({first_name: "Juliette", last_name: "POULAIN", gender: "woman", age_category: 30, witness: false, status: 1, family: family12, spouse: spouse2})
guest45.save!
guest46 = Guest.new({first_name: "Edouard", last_name: "LE GOFF", gender: "man", age_category: 30, witness: false, status: 1, family: family12, spouse: spouse1})
guest46.save!
guest47 = Guest.new({first_name: "Eric", last_name: "DUBOIS", gender: "man", age_category: 50, witness: false, status: 2, family: family13, spouse: spouse1})
guest47.save!
guest48 = Guest.new({first_name: "Chloé", last_name: "LELOUCHE", gender: "woman", age_category: 40, witness: false, status: 1, family: family6, spouse: spouse2})
guest48.save!
guest49 = Guest.new({first_name: "Antoine", last_name: "MOREAU", gender: "man", age_category: 30, witness: true, status: 1, family: family9, spouse: spouse1})
guest49.save!
guest50 = Guest.new({first_name: "Laetitia", last_name: "GARCIA", gender: "woman", age_category: 30, witness: true, status: 1, family: family10, spouse: spouse2})
guest50.save!

puts "Guests created!"

puts "Creating guest desks..."
guestdesk1 = GuestDesk.new({guest: guest1, desk: desk1})
guestdesk1.save!
guestdesk2 = GuestDesk.new({guest: guest2, desk: desk1})
guestdesk2.save!
guestdesk3 = GuestDesk.new({guest: guest3, desk: desk1})
guestdesk3.save!
guestdesk4 = GuestDesk.new({guest: guest4, desk: desk1})
guestdesk4.save!
guestdesk5 = GuestDesk.new({guest: guest5, desk: desk2})
guestdesk5.save!
guestdesk6 = GuestDesk.new({guest: guest6, desk: desk2})
guestdesk6.save!
guestdesk7 = GuestDesk.new({guest: guest7, desk: desk2})
guestdesk7.save!
guestdesk8 = GuestDesk.new({guest: guest8, desk: desk2})
guestdesk8.save!
guestdesk9 = GuestDesk.new({guest: guest9, desk: desk2})
guestdesk9.save!
guestdesk10 = GuestDesk.new({guest: guest10, desk: desk2})
guestdesk10.save!

guestdesk11 = GuestDesk.new({guest: guest11, desk: desk3})
guestdesk11.save!
guestdesk12 = GuestDesk.new({guest: guest12, desk: desk3})
guestdesk12.save!
guestdesk13 = GuestDesk.new({guest: guest13, desk: desk3})
guestdesk13.save!
guestdesk14 = GuestDesk.new({guest: guest14, desk: desk3})
guestdesk14.save!
guestdesk15 = GuestDesk.new({guest: guest15, desk: desk3})
guestdesk15.save!
guestdesk16 = GuestDesk.new({guest: guest16, desk: desk3})
guestdesk16.save!
guestdesk17 = GuestDesk.new({guest: guest17, desk: desk3})
guestdesk17.save!
guestdesk18 = GuestDesk.new({guest: guest18, desk: desk3})
guestdesk18.save!
guestdesk19 = GuestDesk.new({guest: guest19, desk: desk3})
guestdesk19.save!
guestdesk20 = GuestDesk.new({guest: guest20, desk: desk3})
guestdesk20.save!

guestdesk21 = GuestDesk.new({guest: guest21, desk: desk4})
guestdesk21.save!
guestdesk22 = GuestDesk.new({guest: guest22, desk: desk4})
guestdesk22.save!
guestdesk23 = GuestDesk.new({guest: guest23, desk: desk4})
guestdesk23.save!
guestdesk24 = GuestDesk.new({guest: guest24, desk: desk4})
guestdesk24.save!

guestdesk27 = GuestDesk.new({guest: guest27, desk: desk4})
guestdesk27.save!
guestdesk28 = GuestDesk.new({guest: guest28, desk: desk4})
guestdesk28.save!
guestdesk29 = GuestDesk.new({guest: guest29, desk: desk4})
guestdesk29.save!
guestdesk30 = GuestDesk.new({guest: guest30, desk: desk4})
guestdesk30.save!

guestdesk31 = GuestDesk.new({guest: guest31, desk: desk5})
guestdesk31.save!
guestdesk32 = GuestDesk.new({guest: guest32, desk: desk5})
guestdesk32.save!
# guestdesk33 = GuestDesk.new({guest: guest33, desk: desk5})
# guestdesk33.save!
guestdesk34 = GuestDesk.new({guest: guest34, desk: desk5})
guestdesk34.save!
guestdesk35 = GuestDesk.new({guest: guest35, desk: desk5})
guestdesk35.save!
guestdesk36 = GuestDesk.new({guest: guest36, desk: desk5})
guestdesk36.save!
guestdesk37 = GuestDesk.new({guest: guest37, desk: desk5})
guestdesk37.save!
guestdesk38 = GuestDesk.new({guest: guest38, desk: desk5})
guestdesk38.save!
guestdesk39 = GuestDesk.new({guest: guest39, desk: desk4})
guestdesk39.save!
# guestdesk40 = GuestDesk.new({guest: guest40, desk: desk6})
# guestdesk40.save!

guestdesk41 = GuestDesk.new({guest: guest41, desk: desk4})
guestdesk41.save!
guestdesk42 = GuestDesk.new({guest: guest42, desk: desk4})
guestdesk42.save!
guestdesk43 = GuestDesk.new({guest: guest43, desk: desk6})
guestdesk43.save!
guestdesk44 = GuestDesk.new({guest: guest44, desk: desk1})
guestdesk44.save!
guestdesk45 = GuestDesk.new({guest: guest45, desk: desk1})
guestdesk45.save!
guestdesk46 = GuestDesk.new({guest: guest46, desk: desk6})
guestdesk46.save!
guestdesk47 = GuestDesk.new({guest: guest47, desk: desk6})
guestdesk47.save!
guestdesk48 = GuestDesk.new({guest: guest48, desk: desk6})
guestdesk48.save!
guestdesk49 = GuestDesk.new({guest: guest49, desk: desk6})
guestdesk49.save!
GuestDesk.create(guest: guest_spouse_1, desk: desk6)
GuestDesk.create(guest: guest_spouse_2, desk: desk6)
# guestdesk50 = GuestDesk.new({guest: guest50, desk: desk6})
# guestdesk50.save!

puts "Guest desks created!"

# Date.today
# Date.new(1991, 12, 28)
# Date.today - 7.days
