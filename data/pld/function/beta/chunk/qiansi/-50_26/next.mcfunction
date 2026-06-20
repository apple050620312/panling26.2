
#要做的事
setblock -792 98 429 minecraft:command_block[custom_data={Command:"function pld:npcs/qiansi/chat10"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -792 98 429 run function pld:npcs/qiansi/chat10
#区块卸载
forceload remove -792 429
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-50_35/pre 1t