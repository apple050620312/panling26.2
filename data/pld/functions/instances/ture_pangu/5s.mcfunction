execute if score #system final_battle_stage matches 1.. if score #system final_battle_phase matches 1 run function pld:instances/ture_pangu/block/threat_check
execute if score #system final_battle_stage matches 1.. if score #system final_battle_phase matches 2 run function pld:instances/ture_pangu/npc_health/update

execute if score #system final_battle_stage matches 1..5 run spawnpoint @a -339 208 -1442
execute if score #system final_battle_stage matches 1..5 run tp @a[x=-525,y=0,z=-1669,dx=367,dy=90,dz=392] -339 208 -1442
execute if score #system final_battle_stage matches 1..5 run tp @a[x=-380,y=175,z=-1470,distance=500..,gamemode=adventure] -339 208 -1442
execute if score #system final_battle_stage matches 6.. run function pld:instances/ture_pangu/after/leave_left_players