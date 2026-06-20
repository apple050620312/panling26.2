#根据等級和id获取强化条目细节 并给予属性
#enhance_lvl
execute store result score #temp temp run data get block ~ 255 ~ Items[0].components."minecraft:custom_data".enhance_lvl

execute if score #temp temp matches 1.. run function pld:equipment_lock/enable/enhance/1
execute if score #temp temp matches 2.. run function pld:equipment_lock/enable/enhance/2
execute if score #temp temp matches 3.. run function pld:equipment_lock/enable/enhance/3
execute if score #temp temp matches 4.. run function pld:equipment_lock/enable/enhance/4

