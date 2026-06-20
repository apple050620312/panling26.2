
setblock 173 63 -159 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/renmain5"}] replace 
setblock 178 63 -164 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/shenmain5"}] replace 
setblock 186 61 -158 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/xianmain5"}] replace 
setblock 181 67 -166 minecraft:red_wool
setblock 181 67 -168 air
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 173 63 -159 run function pld:npcs/middle/renmain5
execute positioned 178 63 -164 run function pld:npcs/middle/shenmain5
execute positioned 186 61 -158 run function pld:npcs/middle/xianmain5
#区块卸载
forceload remove 167 -130 185 -165
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/10_0/pre 1t