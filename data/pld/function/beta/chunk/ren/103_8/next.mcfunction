#要做的事
setblock 1658 142 131 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/chat13"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 1658 142 131 run function pld:npcs/ren/chat13
#区块卸载
forceload remove 1660 132
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/103_9/pre 1t