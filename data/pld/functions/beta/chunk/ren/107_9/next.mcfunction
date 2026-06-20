#要做的事
setblock 1712 44 159 minecraft:command_block{Command:"function pld:npcs/ren/rh1"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 1712 44 159 run function pld:npcs/ren/rh1
#区块卸载
forceload remove 1712 159
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/108_8/pre 1t