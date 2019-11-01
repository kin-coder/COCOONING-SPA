Service.destroy_all
Category.destroy_all
Subcategory.destroy_all
Client.destroy_all
Reservation.destroy_all
Reservationcategory.destroy_all
Reservationsubcategory.destroy_all
Country.destroy_all
Department.destroy_all
Departmentprovider.destroy_all
Provider.destroy_all
Comment.destroy_all
Timeslot.destroy_all

s1 = Service.create(name:"Coiffure")
s2 = Service.create(name:"Beauté")
s3 = Service.create(name:"Massage")
s4 = Service.create(name:"Location spa")

# ======================COIFFURE=============================#

c = []
["Homme","Femme","Enfant"].each do |value|
	c.push(Category.create(name: value, service:s1))
	puts value
end


subcategiesHomme = ["Shampoing","Coupe","Couleur","Taille de la barbe","Rasage"]

subcategiesHomme.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[0])
	puts value
end

subcategiesFemme = ["Shampoing","Soin profond","Coupe classique","Coupe création","Brushing (courts et mi-longs)","Brushing (longs)","Couleur (racines)","Couleur complète","Ombré hair","Mèches","Balayage","Patine"]

subcategiesFemme.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[1])
	puts value
end

subcategiesEnfant = ["Coupe","Coiffure enfant"]

subcategiesEnfant.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[2])
	puts value
end

# ====================== BEAUTE =============================#

categoriesBeaute = ["Maquillage","Soin/Massage","Mani-Pedi"]
c = []
categoriesBeaute.each do |value|
	c.push(Category.create(name: value, service:s2))
	puts value
end

subcategiesMaquillage = ["Mariée","Cours solo","Jour","Soirée"]

subcategiesMaquillage.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[0])
	puts value
end

subcategiesManiPedi = ["Manucure","Pose de vernis","Massage du crâne","Beauté des pieds"]

subcategiesManiPedi.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[1])
	puts value
end

subcategiesSoinMassage =  ["Réflexologie","Massage Découverte","Soin Anti-âge"]

subcategiesSoinMassage.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[2])
	puts value
end

# ========================================== MASSAGE ============================================#

c = []
["Homme","Femme","Enfant"].each do |value|
	c.push(Category.create(name: value, service:s3))
	puts value
end

subcategiesFemme = ["Pré natal","Plantaire","Réflexologie Plantaire","Assis","Deep Tissue"]

subcategiesFemme.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[0])
	puts value
end

subcategiesHomme = ["Découverte","Dos","Assis","Relaxant","Lomi-Lomi","Ayuvédique"]

subcategiesHomme.each do |value|
	Subcategory.create(name:value, price:rand(9.0 .. 30).to_s[0 .. 4].to_f, category:c[1])
	puts value
end

#========================CREATION DE CLIENT RESERVATION EXEMPLE ===================================

c1 = Client.create(email:"ram@rom.com",password:"ram@rom.com")
puts "#{c1.email} crée"
r1 = Reservation.create(service:s1,client:c1)
puts "#{c1.email} a reservé"

a = Reservationcategory.create(category:s1.categories.first,reservation:r1)
puts "#{c1.email} a 1 Reservationcategory"

b = Reservationcategory.create(category:s1.categories.last,reservation:r1)
puts "#{c1.email} a 2 Reservationcategory"

s1.categories.first.subcategories[0..3].each do |value|
	Reservationsubcategory.create(subcategory:value,reservationcategory:a)
	puts value.name
end

s1.categories.last.subcategories[0..2].each do |value|
	Reservationsubcategory.create(subcategory:value,reservationcategory:b)
	puts value.name
end

c2 = Client.create(email:"rom@ram.com",password:"rom@ram.com")
puts "#{c2.email} crée"

r2 = Reservation.create(service:s3,client:c2)
puts "#{c2.email} a reservé"

a = Reservationcategory.create(category:s3.categories.first,reservation:r2)
d = Reservationcategory.create(category:s3.categories.first,reservation:r2)
puts "#{c2.email} a 1 Reservationcategory"
b = Reservationcategory.create(category:s3.categories.last,reservation:r2)
puts "#{c2.email} a 2 Reservationcategory"

s3.categories.first.subcategories[1..3].each do |value|
	Reservationsubcategory.create(subcategory:value,reservationcategory:d)
	puts value.name
end

s3.categories.first.subcategories[0..3].each do |value|
	Reservationsubcategory.create(subcategory:value,reservationcategory:a)
	puts value.name
end

s3.categories.last.subcategories[0..4].each do |value|
	Reservationsubcategory.create(subcategory:value,reservationcategory:b)
	puts value.name
end

#===================================================================================================


