
#要做的事
setblock 3280 18 -260 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/chat10"}] replace 
setblock 3279 18 -251 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/chat11"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3280 18 -260 run function pld:npcs/zhan/chat10
execute positioned 3279 18 -251 run function pld:npcs/zhan/chat11
#区块卸载
forceload remove 3285 -259 3279 -249
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/206_-8/pre 1t