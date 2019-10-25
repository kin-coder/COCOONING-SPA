# VAKIO MENJA


<pre>
LES TABLE

(*Service*) (*Category*)  (*Subcategory*)
Service === Categorie === Sous-categorie =======
											  ||
										(* Order == commande *)
									JoinSousCategorieCommande(table intermediaire an'sous-categorie sy commande)
											  ||			 (order table intermediaire /* cart_id + subcategory_id */)
										 (* Cart == panier *)
										   Commande (table commande /*user_id topon'le panier*/)
										   	  ||
									JoinCommandeReservation
											  ||
										  Reservation
													
==========================================================================================

irb(main):005:0> tp Service.new
ID | NAME | CREATED_AT | UPDATED_AT
---|------|------------|-----------
   |      |            |           
s = Service.find(1)
s.categories			Liste des categories

==========================================================================================

irb(main):005:0> tp Category.new
ID | NAME | SERVICE_ID | CREATED_AT | UPDATED_AT
---|------|------------|------------|-----------
   |      |            |            |           

c = Category.find(1)
c.service 			

==========================================================================================

irb(main):005:0> tp Subcategory.new
ID | NAME | DESCRIPTION | PRICE | CATEGORY_ID | CREATED_AT | UPDATED_AT
---|------|-------------|-------|-------------|------------|-----------
   |      |             |       |             |            |           


=================== Relation N-N entre Subcategory et Cart (sous-categorie et panier //{le tam'tableau 
															sous-categorie sy commande relation N-N})

irb(main):003:0> tp Order.new	commande/table intermediaire an'le panier sy le sous category
ID | SUBCATEGORY_ID | CART_ID | CREATED_AT | UPDATED_AT
---|----------------|---------|------------|-----------
   |                |         |            |           

=================== Un panier peur avoir plusieur commande et un commande peut etre commander plusieur fois

irb(main):002:0> tp Cart.new		panier/(mitovy am'le we commande teo am'le tableau)
ID | CREATED_AT | UPDATED_AT
---|------------|-----------
   |            |           

c = Cart.first							#un panier d'un utilisateur
s = Subcategory.first					#prendre un sous-category
o = Order.create(subcategory:s, cart:c) #Ajouter la sous-category dans le grace a la table commande(order)

[	
	retourne la valeurs s et c
	o.subcategory
	o.cart
]


s.orders				#return un array de tous les commandes(orders) qui a pris la commande s
s.carts 				#return un array de tous les panier(carts) qui on pris la commande s

c.subcategories			#return un array de tous les subcategory(sous-categorie) commander dans le panier
c.orders 				#return un array de tous les commande qui est dans le panier c (cad Order dont cart_id = c.id)



==========================================================================================

irb(main):005:0> tp Reservation.new		table an'le reservation tsy miova
ID | CRENEAU | CREATED_AT | UPDATED_AT
---|---------|------------|-----------
   |         |            |           

==========================================================================================



</pre>
































This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
