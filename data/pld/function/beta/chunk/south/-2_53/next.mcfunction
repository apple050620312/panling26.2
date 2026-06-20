#要做的事
setblock -25 45 868 minecraft:command_block{Command:"function pld:npcs/south/tong2"} replace 
setblock -24 45 868 minecraft:command_block{Command:"function pld:npcs/south/tong3"} replace 

kill @e[type=villager,tag=!panling]
execute positioned -25 45 868 run function pld:npcs/south/tong2
execute positioned -24 45 868 run function pld:npcs/south/tong3
#区块卸载
forceload remove -24 868
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-3_53/pre 1t