
#要做的事
setblock 3336 63 1033 minecraft:command_block{Command:"function pld:npcs/xian/xe1"} replace 
kill @e[type=villager,tag=!panling]
execute positioned 3336 63 1033 run function pld:npcs/xian/xe1
#区块卸载
forceload remove 3334 1029
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/200_54 1t