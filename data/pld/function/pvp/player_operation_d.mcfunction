scoreboard players operation #system pvp_def_count *= 10 int
scoreboard players operation #system operation_scb1 = #system pvp_atk_count
scoreboard players set #system operation_scb2 15
scoreboard players operation #system operation_scb1 *= #system operation_scb2

execute if score #system pvp_def_count < #system operation_scb1 run scoreboard players set #system pvp_pl_stat 1
execute if score #system pvp_def_count > #system operation_scb1 run scoreboard players set #system pvp_pl_stat 2

scoreboard players operation #system operation_scb1 = #system pvp_atk_count
scoreboard players set #system operation_scb2 20
scoreboard players operation #system operation_scb1 *= #system operation_scb2

execute if score #system pvp_def_count > #system operation_scb1 run scoreboard players set #system pvp_pl_stat 3
