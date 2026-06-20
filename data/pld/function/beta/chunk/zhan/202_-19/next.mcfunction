
#要做的事
setblock 3240 30 -294 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/guard3"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3240 30 -294 run function pld:npcs/zhan/guard3
#区块卸载
forceload remove 3235 -293
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/204_-8/pre 1t