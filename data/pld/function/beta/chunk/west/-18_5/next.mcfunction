
#要做的事
setblock -276 95 88 minecraft:command_block{Command:"function pld:npcs/west/westmain1"} replace 
kill @e[type=villager,tag=!panling]
execute positioned -276 95 88 run function pld:npcs/west/westmain1
#区块卸载
forceload remove -275 90
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-25_9/pre 1t