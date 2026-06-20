data modify storage item:main show append from storage item:main SelectedItem.tag.display.Name
data modify storage item:main show append from storage item:main SelectedItem.tag.display.Lore

#數量
execute store result score #count int run data get storage item:main SelectedItem.Count

execute if score #count int matches 1 run tellraw @a ["",{"selector":"@s"},{"translate":"pl.book.menu13.info"}," [",{"nbt":"SelectedItem.tag.display.Name","storage":"item:main","interpret":true,"hoverEvent":{"action":"show_text","contents":{"nbt":"show","storage":"item:main","interpret":true,"separator":{"text":"\n"}}}},"]"]
execute if score #count int matches 2.. run tellraw @a ["",{"selector":"@s"},{"translate":"pl.book.menu13.info"}," [",{"nbt":"SelectedItem.tag.display.Name","storage":"item:main","interpret":true,"hoverEvent":{"action":"show_text","contents":{"nbt":"show","storage":"item:main","interpret":true,"separator":{"text":"\n"}}}},"x",{"score":{"name":"#count","objective":"int"}},"]"]
