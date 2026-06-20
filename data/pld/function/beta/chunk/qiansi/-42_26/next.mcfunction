
#要做的事
setblock -658 107 424 minecraft:command_block[block_entity_data={Command:"function pld:npcs/qiansi/chat11"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned -658 107 424 run function pld:npcs/qiansi/chat11
#区块卸载
forceload remove -660 419 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-43_22/pre 1t