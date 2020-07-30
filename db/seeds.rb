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

bedroom = Room.create(name: "Bedroom", img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/bedroom.jpg')
living = Room.create(name: "Living Room", img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/living-room.jpg')
office = Room.create(name: "Office", img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/office.jpg')

item1 = Item.new(name: "String", img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/String.png', recipe_id: recipe.id, inventory_id: dumbinventory.id, room_id: bedroom.id)
item1.save()
item2 = Item.new(name: "Rod", img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/rod.png', recipe_id: recipe.id, inventory_id: dumbinventory.id, room_id: office.id)
item2.save()
item3 = Item.new(name: "Hammer", img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/hammer.png', recipe_id: rec3.id, inventory_id: dumbinventory.id, room_id: office.id)
item3.save()
item4 = Item.new(name: 'Stick', img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/Stick.png', recipe_id: rec2.id, inventory_id: dumbinventory.id, room_id: living.id)
item4.save()
item5 = Item.new(name: 'Matches', img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/matches.png', recipe_id: rec2.id, inventory_id: dumbinventory.id, room_id: bedroom.id)
item5.save()
item6 = Item.new(name: 'Gold', img_url: '/Users/travisjohnprol/Dropbox/Travis/Flatiron/Bootcamp/code/Mod3/Mod-3-Final-Project/final-project-backend/db/images/gold.png', recipe_id: rec3.id, inventory_id: dumbinventory.id, room_id: living.id)
item6.save()
#stone, brick, gold, torch
# Item.create(name: 'hi')



