tp @a -339 208 -1442 135 ~

#记分板更新
scoreboard players set #final_npc_finish int 0
scoreboard players add #system final_battle_phase 1

execute if score #system final_battle_phase matches 3 run function pld:instances/ture_pangu/stage/2/next_stage

