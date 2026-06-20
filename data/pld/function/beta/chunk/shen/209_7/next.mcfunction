
#要做的事
setblock 3335 153 118 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/shenmain2"}] replace 

setblock 3346 152 127 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/guard"}] replace 
setblock 3328 152 127 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/guard"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3335 153 118 run function pld:npcs/shen/shenmain2
execute positioned 3346 152 127 run function pld:npcs/shen/guard
execute positioned 3328 152 127 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3346 122 3320 121
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/209_9/pre 1t