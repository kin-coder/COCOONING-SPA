# README
==========================================================================================
rails g model Service name:string
rails g model Category name:string
rails g model Subcategory name:string description:text price:float


rails g model Cart
rails g model Cartcategory
rails g model Cartsubcategory

relation 1-N Cart et Service {1 Service par panier seulment}

relation 1-N Cart et Timeslot {1 cart peut avoir plusieur dates}

relation N-N Cart Category {Cartcategory table intermediaire}

relation N-N Cartcategory Subcategory {Cartsubcategory table intermediare}

==========================================================================================
