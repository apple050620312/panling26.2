#要做的事
setblock -179 62 20 minecraft:command_block[custom_data={Command:"function pld:npcs/west/chat1"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -179 62 20 run function pld:npcs/west/chat1
#区块卸载
forceload remove -182 24
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-13_-11/pre 1t