scoreboard players set #system final_battle_random1 -1
scoreboard players set #system final_battle_random2 -1
scoreboard players set #system final_battle_random3 -1

execute store success score #system final_battle_random1 run execute if predicate pld:half 
execute store success score #system final_battle_random2 run execute if predicate pld:half
execute store success score #system final_battle_random3 run execute if predicate pld:half

execute if score #system final_battle_random1 matches 0 if score #system final_battle_random2 matches 0 if score #system final_battle_random3 matches 0 run function pld:instances/ture_pangu/npc_health/summon/0
execute if score #system final_battle_random1 matches 1 if score #system final_battle_random2 matches 0 if score #system final_battle_random3 matches 0 run function pld:instances/ture_pangu/npc_health/summon/1
execute if score #system final_battle_random1 matches 0 if score #system final_battle_random2 matches 1 if score #system final_battle_random3 matches 0 run function pld:instances/ture_pangu/npc_health/summon/2
execute if score #system final_battle_random1 matches 1 if score #system final_battle_random2 matches 1 if score #system final_battle_random3 matches 0 run function pld:instances/ture_pangu/npc_health/summon/3
execute if score #system final_battle_random1 matches 0 if score #system final_battle_random2 matches 0 if score #system final_battle_random3 matches 1 run function pld:instances/ture_pangu/npc_health/summon/4
execute if score #system final_battle_random1 matches 1 if score #system final_battle_random2 matches 0 if score #system final_battle_random3 matches 1 run function pld:instances/ture_pangu/npc_health/summon/5
execute if score #system final_battle_random1 matches 0 if score #system final_battle_random2 matches 1 if score #system final_battle_random3 matches 1 run function pld:instances/ture_pangu/npc_health/summon/6
execute if score #system final_battle_random1 matches 1 if score #system final_battle_random2 matches 1 if score #system final_battle_random3 matches 1 run function pld:instances/ture_pangu/npc_health/summon/7

