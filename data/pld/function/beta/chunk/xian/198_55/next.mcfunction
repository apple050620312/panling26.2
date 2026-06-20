
#要做的事
setblock 3181 91 889 minecraft:command_block{Command:"function pld:npcs/xian/xh1"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 3181 91 889 run function pld:npcs/xian/xh1
#区块卸载
forceload remove 3181 889
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/199_48/pre 1t