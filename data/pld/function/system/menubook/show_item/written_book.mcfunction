data modify storage item:main show set value ['{"nbt":"SelectedItem.tag.title","storage":"item:main"}','[{"nbt":"SelectedItem.tag.author","storage":"item:main"},{"translate":"pl.book.auther"}]']

#數量
execute store result score #count int run data get storage item:main SelectedItem.count

execute if score #count int matches 1 run tellraw @a ["",{"selector":"@s"},{"translate":"pl.book.menu13.info"}," [",{"nbt":"SelectedItem.tag.title","storage":"item:main","hoverEvent":{"action":"show_text","contents":{"nbt":"show[]","storage":"item:main","interpret":true,"separator":{"text":"\n"}}}},"]"]
execute if score #count int matches 2.. run tellraw @a ["",{"selector":"@s"},{"translate":"pl.book.menu13.info"}," [",{"nbt":"SelectedItem.tag.title","storage":"item:main","hoverEvent":{"action":"show_text","contents":{"nbt":"show[]","storage":"item:main","interpret":true,"separator":{"text":"\n"}}}},"x",{"score":{"name":"#count","objective":"int"}},"]"]
