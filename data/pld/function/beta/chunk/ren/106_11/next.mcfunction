#要做的事
setblock 1704 156 179 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/guard"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1704 156 179 run function pld:npcs/ren/guard
#区块卸载
forceload remove 1700 178
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/107_6/pre 1t