#要做的事
setblock -640 135 366 minecraft:command_block{Command:"function pld:npcs/qiansi/chat14"} replace 
kill @e[type=villager,tag=!panling]
execute positioned -640 135 366 run function pld:npcs/qiansi/chat14
#区块卸载
forceload remove -636 369 -637 365
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-40_26/pre 1t