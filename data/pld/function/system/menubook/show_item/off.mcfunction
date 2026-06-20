#物品lore
data modify storage item:main show set value 
data modify storage item:main SelectedItem set value {}
data modify storage item:main SelectedItem set from entity @s Inventory[{Slot:-106b}]
execute unless data storage item:main SelectedItem{id:"minecraft:written_book"} run function pld:system/menubook/show_item/normal_items
execute if data storage item:main SelectedItem{id:"minecraft:written_book"} run function pld:system/menubook/show_item/written_book



