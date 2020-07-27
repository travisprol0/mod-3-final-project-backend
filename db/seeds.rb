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

inventory = Inventory.create(character_id: character.id)

advanced_item1 = AdvancedItem.create(name: "fishing pole",inventory_id: inventory.id)

recipe = Recipe.create(name: "fishing pole", advanced_item_id: advanced_item1.id)

item1 = Item.create(name: "String", img_url: 'https://rb.gy/vcm4sr', inventory_id:inventory.id, recipe_id: recipe.id)
item2 = Item.create(name: "Stick", img_url: 'https://rb.gy/vcm4sr', inventory_id: inventory.id, recipe_id: recipe.id)
item3 = Item.create(name: "Hammer", img_url: 'https://rb.gy/vcm4sr', inventory_id: inventory.id, recipe_id: recipe.id)



