#根据等級和id获取强化条目细节 并给予属性
#legend_id
execute store result score #temp temp run data get block ~ 255 ~ Items[0].tag.legend_id
execute store result score #temp temp2 run data get block ~ 255 ~ Items[0].tag.slot

execute if score #temp temp matches 0..6 store result storage pld:macro id int 1 run scoreboard players get #temp temp\nexecute if score #temp temp matches 0..6 run function pld:equipment_lock/enable/legend_id/macro_call with storage pld:macro\n