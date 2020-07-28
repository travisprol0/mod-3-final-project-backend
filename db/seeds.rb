# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.delete_all
Inventory.delete_all
Character.delete_all
AdvancedItem.delete_all
Recipe.delete_all
Room.delete_all

character = Character.create(name: "Character #1", health: 100, img_url: 'https://vignette.wikia.nocookie.net/despicableme/images/1/1d/Kevin_minions.png/revision/latest/top-crop/width/360/height/450?cb=20170703052012')
dummy = Character.create(name:'dumb')

inventory = Inventory.create(character_id: character.id)
dumbinventory = Inventory.create(character_id: dummy.id)

advanced_item1 = AdvancedItem.create(name: "Fishing Pole", inventory_id: dumbinventory.id)
two = AdvancedItem.create(name: 'Torch', inventory_id: dumbinventory.id)
key = AdvancedItem.create(name: 'Key', inventory_id: dumbinventory.id)

recipe = Recipe.create(name: "Fishing Pole", advanced_item_id: advanced_item1.id)
rec2 = Recipe.create(name: 'Torch', advanced_item_id: two.id)
rec3 = Recipe.create(name: 'Key', advanced_item_id: key.id)

bedroom = Room.create(name: "Bedroom", img_url: 'https://cdn5.vectorstock.com/i/1000x1000/75/44/teenager-bedroom-cartoon-of-vector-20637544.jpg')
living = Room.create(name: "Living Room", img_url: 'https://cdn1.vectorstock.com/i/1000x1000/84/40/cartoon-living-room-apartment-interior-vector-20598440.jpg')
office = Room.create(name: "Office", img_url: 'https://cdn5.vectorstock.com/i/1000x1000/98/04/cartoon-home-office-interior-workplace-vector-20859804.jpg')

item1 = Item.new(name: "String", img_url: 'https://rb.gy/raglyj', recipe_id: recipe.id, inventory_id: dumbinventory.id, room_id: bedroom.id)
item1.save()
item2 = Item.new(name: "Rod", img_url: 'https://cdn11.bigcommerce.com/s-yrxo00xam4/images/stencil/1280x1280/products/2032/3041/LSC-368__93800.1565100581.png?c=2&imbypass=on', recipe_id: recipe.id, inventory_id: dumbinventory.id, room_id: office.id)
item2.save()
item3 = Item.new(name: "Hammer", img_url: 'https://www.pngarts.com/files/4/Hammer-Transparent-Image.png', recipe_id: rec3.id, inventory_id: dumbinventory.id, room_id: office.id)
item3.save()
item4 = Item.new(name: 'Stick', img_url: 'https://lh3.googleusercontent.com/proxy/y6vzMR7cYbOGLNzOGVXXpywpdqvjq_kOIMt2PE-l0ye8m94-aiUGY__vZqOqhowhcmuLIOMjRHk1lZJkNi5r1RMugvQu-uoUwJBEJgV1uxvJN-p7oMs', recipe_id: rec2.id, inventory_id: dumbinventory.id, room_id: living.id)
item4.save()
item5 = Item.new(name: 'Matches', img_url: 'https://rb.gy/8imoux', recipe_id: rec2.id, inventory_id: dumbinventory.id, room_id: bedroom.id)
item5.save()
item6 = Item.new(name: 'Gold', img_url: 'https://rb.gy/uwiid2', recipe_id: rec3.id, inventory_id: dumbinventory.id, room_id: living.id)
item6.save()
#stone, brick, gold, torch
# Item.create(name: 'hi')



