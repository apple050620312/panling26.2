#检查第一个，uid是否一致
execute store result score #temp player_uid run data get storage pld:system blooding_temp[0].uid
#找到目标，并将temp2中的列表项放回temp中
execute if score #temp player_uid = @s player_uid run scoreboard players set #temp blooded 1
execute if score #temp player_uid = @s player_uid if data storage pld:system blooding_temp2[0] run function pld:system/warrior_attack/weapon_skills/axe4/loop2

#不是当前目标，放到temp2
execute unless score #temp player_uid = @s player_uid run data modify storage pld:system blooding_temp2 prepend from storage pld:system blooding_temp[0]
execute unless score #temp player_uid = @s player_uid run data remove storage pld:system blooding_temp[0]


#如果清空了，则输出无，并且无需动原列表
execute unless data storage pld:system blooding_temp[0] run scoreboard players set #temp blooded 2


#如果有第一个 那么继续循环
execute if data storage pld:system blooding_temp[0] unless score #temp blooded matches 1.. run function pld:system/warrior_attack/weapon_skills/axe4/loop
