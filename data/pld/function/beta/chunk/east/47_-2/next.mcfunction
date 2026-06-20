#要做的事
setblock 757 55 -21 minecraft:command_block[custom_data={Command:"function pld:npcs/east/chat5"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 757 55 -21 run function pld:npcs/east/chat5
#区块卸载
forceload remove 757 -21
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/50_-5/pre 1t