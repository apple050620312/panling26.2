
#要做的事
setblock 3279 15 -120 minecraft:command_block[custom_data={Command:"function pld:npcs/zhan/chat3"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 3279 15 -120 run function pld:npcs/zhan/chat3
#区块卸载
forceload remove 3278 -120
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/204_-11/pre 1t