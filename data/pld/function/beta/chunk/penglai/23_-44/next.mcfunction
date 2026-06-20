#要做的事
setblock 380 37 -694 minecraft:command_block[custom_data={Command:"function pld:npcs/penglai/chat6"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 380 37 -694 run function pld:npcs/penglai/chat6
#区块卸载
forceload remove 380 -694
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/25_-41/pre 1t