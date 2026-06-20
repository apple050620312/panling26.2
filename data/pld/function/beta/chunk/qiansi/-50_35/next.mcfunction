
#要做的事
setblock -785 138 561 minecraft:command_block[block_entity_data={Command:"function pld:npcs/qiansi/chat15"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -785 138 561 run function pld:npcs/qiansi/chat15
#区块卸载
forceload remove -785 560
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-51_24/pre 1t