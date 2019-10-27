Service.destroy_all
Category.destroy_all
Subcategory.destroy_all

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

# ====================== MASSAGE =============================#

c = []
["Homme","Femme"].each do |value|
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
