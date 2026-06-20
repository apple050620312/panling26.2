#要做的事
setblock 1697 90 745 minecraft:command_block[custom_data={Command:"function pld:npcs/east/zhanmain7"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 1697 90 745 run function pld:npcs/east/zhanmain7
#区块卸载
forceload remove 1698 746
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/106_53/pre 1t