
#要做的事
setblock 3227 30 -287 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/guard4"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3227 30 -287 run function pld:npcs/zhan/guard4
#区块卸载
forceload remove 3231 -286
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/202_-16/pre 1t