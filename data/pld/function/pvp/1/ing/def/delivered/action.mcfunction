#4.5s后 开始上升130
execute if score #system pvp1_deliveract matches 50 positioned 1420 111 -1874 run tp @e[type=command_block_minecart,limit=1] ~ ~10 ~
execute if score #system pvp1_deliveract matches 50 run particle cloud 1420 120 -1874 1 0 1 0 50 force

#0.5上升一次40
execute if score #system pvp1_deliveract matches 40 positioned 1420 111 -1874 run tp @e[type=command_block_minecart,limit=1] ~ ~20 ~
execute if score #system pvp1_deliveract matches 40 run particle cloud 1420 130 -1874 1 0 1 0 50 force
#0.5上升一次30
execute if score #system pvp1_deliveract matches 30 positioned 1420 111 -1874 run tp @e[type=command_block_minecart,limit=1] ~ ~30 ~
execute if score #system pvp1_deliveract matches 30 run particle cloud 1420 140 -1874 1 0 1 0 50 force
#0.5上升完毕20
execute if score #system pvp1_deliveract matches 20 run kill @e[type=command_block_minecart,limit=1]
execute if score #system pvp1_deliveract matches 20 run particle cloud 1420 150 -1874 1 0 1 0 50 force
execute if score #system pvp1_deliveract matches 20 run setblock 1418 107 -1872 minecraft:air

#1s后传送全体玩家0
execute if score #system pvp1_deliveract matches 0 run tp @a[distance=..200,team=defence] 1321 104 -1744 -120 0