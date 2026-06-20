#要做的事
setblock 133 41 173 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat12"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 133 41 173 run function pld:npcs/middle/chat12
#区块卸载
forceload remove 135 173
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/9_-15/pre 1t