
#要做的事
setblock -256 43 717 minecraft:command_block{Command:"function pld:npcs/south/chat4"} replace 
kill @e[type=villager,tag=!panling]
execute positioned -256 43 717 run function pld:npcs/south/chat4
#区块卸载
forceload remove -251 714
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-17_24/pre 1t