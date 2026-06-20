#储存玩家当前坐标
execute store result score temp_x0 int run data get entity @s Pos[0] 1000
execute store result score temp_y0 int run data get entity @s Pos[1] 1000
execute store result score temp_z0 int run data get entity @s Pos[2] 1000
function pld:pre/player_rot/public_all

execute as @e[tag=monster,distance=..6] run function pld:system/zf/shifang/main/refined/metal/target/cal

