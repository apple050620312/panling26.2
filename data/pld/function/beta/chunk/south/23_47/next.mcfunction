
#要做的事
setblock 376 45 767 minecraft:command_block{Command:"function pld:npcs/south/southmain3"} replace 
kill @e[type=villager,tag=!panling]
execute positioned 376 45 767 run function pld:npcs/south/southmain3
#区块卸载
forceload remove 375 765
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/200_-50/pre 1t