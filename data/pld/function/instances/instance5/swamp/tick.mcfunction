scoreboard players set #system instance5_swampc 0
scoreboard players operation #system instance5_swampc += #system instance5_sppos1
scoreboard players operation #system instance5_swampc += #system instance5_sppos2
scoreboard players operation #system instance5_swampc += #system instance5_sppos3
scoreboard players operation #system instance5_swampc += #system instance5_sppos4

execute store result bossbar pl:instance5_swamp value run scoreboard players get #system instance5_swampc


#兑泽破解
execute if score #system instance5_sppos1 matches 0 if score #system instance5_sppos2 matches 0 if score #system instance5_sppos3 matches 0 if score #system instance5_sppos4 matches 0 if score @e[tag=instance5_skill,limit=1] instance5_swamp matches 1 unless score #system instance5_reset matches 1 run function pld:instances/instance5/swamp/shut_off
