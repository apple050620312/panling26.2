
#要做的事
setblock 3223 102 767 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/chat6"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 3223 102 767 run function pld:npcs/xian/chat6
#区块卸载
forceload remove 3221 766
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/201_50/pre 1t