#要做的事
setblock 555 28 6 minecraft:command_block[custom_data={Command:"function pld:npcs/east/chat1"}] replace 
setblock 559 75 28 air
kill @e[type=villager,tag=!panling]
execute positioned 555 28 6 run function pld:npcs/east/chat1
#区块卸载
forceload remove 556 19 555 12
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/34_2/pre 1t