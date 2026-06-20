
#要做的事
setblock 3232 96 281 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 
setblock 3231 95 272 minecraft:command_block{Command:"function pld:npcs/shen/chat8"} replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3231 95 272 run function pld:npcs/shen/chat8
execute positioned 3232 96 281 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3227 275 3234 278
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/203_18/pre 1t