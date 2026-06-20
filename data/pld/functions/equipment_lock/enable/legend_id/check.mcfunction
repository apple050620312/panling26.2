#根据等级和id获取强化条目细节 并给予属性
#legend_id
execute store result score #temp temp run data get block ~ 255 ~ Items[0].tag.legend_id
execute store result score #temp temp2 run data get block ~ 255 ~ Items[0].tag.slot

execute if score #temp temp matches 0 run function pld:equipment_lock/enable/legend_id/0
execute if score #temp temp matches 1 run function pld:equipment_lock/enable/legend_id/1
execute if score #temp temp matches 2 run function pld:equipment_lock/enable/legend_id/2
execute if score #temp temp matches 3 run function pld:equipment_lock/enable/legend_id/3
execute if score #temp temp matches 4 run function pld:equipment_lock/enable/legend_id/4
execute if score #temp temp matches 5 run function pld:equipment_lock/enable/legend_id/5
execute if score #temp temp matches 6 run function pld:equipment_lock/enable/legend_id/6
