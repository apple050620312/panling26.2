
#要做的事
setblock 1683 146 206 minecraft:command_block{Command:"function pld:npcs/ren/chat6"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 1683 146 206 run function pld:npcs/ren/chat6
#区块卸载
forceload remove 1684 205
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/106_7/pre 1t