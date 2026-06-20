#重置冷却缩减情况
scoreboard players set @s weapon_skill_cool_reduce 0

#列表统计
function #pld:weapon_cool/main

#上限
execute if score @s weapon_skill_cool_reduce >= #system weapon_skill_cool_reduce_max run scoreboard players operation @s weapon_skill_cool_reduce = #system weapon_skill_cool_reduce_max
execute if score @s weapon_skill_cool_reduce matches 100.. run scoreboard players set @s weapon_skill_cool_reduce 100


