
#要做的事
setblock 2727 75 824 minecraft:command_block{Command:"function pld:npcs/yao/chat7"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 2727 75 824 run function pld:npcs/yao/chat7
#区块卸载
forceload remove 2728 828
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/171_53/pre 1t