#输入 @s archer_damage
#输出 #temp temp

#上傷害量
scoreboard players operation #temp temp = @s archer_damage
scoreboard players operation #temp temp2 = #system weapon_skill_crossbow5_multiplier
scoreboard players operation #temp temp *= #temp temp2
scoreboard players set #temp temp2 100
scoreboard players operation #temp temp /= #temp temp2

