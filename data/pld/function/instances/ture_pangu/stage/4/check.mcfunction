execute if score #system final_battle_phase matches 1 run function pld:instances/ture_pangu/stage/4/phase1
execute if score #system final_battle_phase matches 2 run function pld:instances/ture_pangu/stage/4/phase2
execute if score #system final_battle_phase matches 3 run function pld:instances/ture_pangu/stage/4/next_stage
execute unless score #system final_battle_phase matches 1.. run function pld:instances/ture_pangu/stage/4/init

