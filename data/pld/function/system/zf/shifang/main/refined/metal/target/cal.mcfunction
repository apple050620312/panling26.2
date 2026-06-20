execute store result score temp_x int run data get entity @s Pos[0] 1000
execute store result score temp_y int run data get entity @s Pos[1] 1000
execute store result score temp_z int run data get entity @s Pos[2] 1000
scoreboard players operation temp_x int -= temp_x0 int
scoreboard players operation temp_y int -= temp_y0 int
scoreboard players operation temp_z int -= temp_z0 int

scoreboard players operation temp_u int = temp_x int
scoreboard players operation temp_u int *= temp_i0 int
scoreboard players operation temp1 int = temp_z int
scoreboard players operation temp1 int *= temp_i2 int
scoreboard players operation temp_u int += temp1 int

scoreboard players operation temp_v int = temp_x int
scoreboard players operation temp_v int *= temp_j0 int
scoreboard players operation temp1 int = temp_y int
scoreboard players operation temp1 int *= temp_j1 int 
scoreboard players operation temp_v int += temp1 int
scoreboard players operation temp1 int = temp_z int
scoreboard players operation temp1 int *= temp_j2 int
scoreboard players operation temp_v int += temp1 int

scoreboard players operation temp_w int = temp_x int
scoreboard players operation temp_w int *= temp_k0 int
scoreboard players operation temp1 int = temp_y int
scoreboard players operation temp1 int *= temp_k1 int
scoreboard players operation temp_w int += temp1 int
scoreboard players operation temp1 int = temp_z int
scoreboard players operation temp1 int *= temp_k2 int
scoreboard players operation temp_w int += temp1 int

execute if score temp_u int matches -1500000..1500000 if score temp_v int matches -2000000..2000000 if score temp_w int matches 0..5000000 run tag @s add metaltag