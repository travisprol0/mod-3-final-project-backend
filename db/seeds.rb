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

character = Character.create(name: "Character #1", health: 100, img_url: 'https://vignette.wikia.nocookie.net/despicableme/images/1/1d/Kevin_minions.png/revision/latest/top-crop/width/360/height/450?cb=20170703052012')
dummy = Character.create(name:'dumb')

inventory = Inventory.create(character_id: character.id)
dumbinventory = Inventory.create(character_id: dummy.id)

advanced_item1 = AdvancedItem.create(name: "Fishing Pole")
two = AdvancedItem.create(name: 'Torch', inventory_id: dumbinventory.id)
key = AdvancedItem.create(name: 'Key', inventory_id: dumbinventory.id)

recipe = Recipe.create(name: "Fishing Pole", advanced_item_id: advanced_item1.id)
rec2 = Recipe.create(name: 'Torch', advanced_item_id: two.id)
rec3 = Recipe.create(name: 'Key', advanced_item_id: key.id)

item1 = Item.new(name: "String", img_url: 'https://rb.gy/vcm4sr', recipe_id: recipe.id, inventory_id: dumbinventory.id)
item1.save()
item2 = Item.new(name: "Rod", img_url: 'https://rb.gy/vcm4sr', recipe_id: recipe.id, inventory_id: dumbinventory.id)
item2.save()
item3 = Item.new(name: "Hammer", img_url: 'https://rb.gy/vcm4sr', recipe_id: rec3.id, inventory_id: dumbinventory.id)
item3.save()
item4 = Item.new(name: 'Stick', img_url: 'https://rb.gy/vcm4sr', recipe_id: rec2.id, inventory_id: dumbinventory.id)
item4.save()
item5 = Item.new(name: 'Matches', img_url: 'https://rb.gy/8imoux', recipe_id: rec2.id, inventory_id: dumbinventory.id)
item5.save()
item6 = Item.new(name: 'gold', img_url: 'https://rb.gy/uwiid2', recipe_id: rec3.id, inventory_id: dumbinventory.id)
item6.save()
#stone, brick, gold, torch
# Item.create(name: 'hi')



