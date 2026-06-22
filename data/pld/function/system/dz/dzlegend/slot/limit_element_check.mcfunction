#将裝備的limit、element存入记分板中
execute store result score #system temp run data get block ~ ~ ~ Items[{slot:6}].tag.limit
execute store result score #system temp2 run data get block ~ ~ ~ Items[{slot:6}].tag.element

#如果原裝備有附灵等级，需要同步
scoreboard players set #temp temp -1
execute store success score #temp temp run data get block ~ ~ ~ Items.[{slot:6}].tag.enchant_id
execute if score #temp temp matches 1 run function pld:system/dz/dzslot/enchant_clone/to_temp
