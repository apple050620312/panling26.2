scoreboard players operation #temp temp = #system in3_skill_ep2_load
scoreboard players set #temp temp2 20
scoreboard players operation #temp temp %= #temp temp2
execute if score #temp temp matches 10 if score #system in3_skill_ep_mark matches 0 run function pld:instances/instance3_0/floors/-4/skill/explode/particle/explode/pre/0/0
execute if score #temp temp matches 10 if score #system in3_skill_ep_mark matches 1 run function pld:instances/instance3_0/floors/-4/skill/explode/particle/explode/pre/1/1