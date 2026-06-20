
#要做的事
setblock 3221 68 857 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3221 68 857 run function pld:npcs/xian/guard
#区块卸载
forceload remove 3222 857
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/201_55/pre 1t