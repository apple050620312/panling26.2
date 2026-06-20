#要做的事
setblock 1650 148 103 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/guard"}] replace 
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1650 148 103 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1650 102
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/103_8/pre 1t