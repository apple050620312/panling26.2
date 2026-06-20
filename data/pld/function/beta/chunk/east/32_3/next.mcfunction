#要做的事
setblock 524 29 60 minecraft:command_block[custom_data={Command:"function pld:npcs/east/chat2"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 524 29 60 run function pld:npcs/east/chat2
#区块卸载
forceload remove 525 55
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/33_1/pre 1t