
#要做的事
setblock -397 107 152 minecraft:command_block[block_entity_data={Command:"function pld:npcs/west/travelling_trader"}] replace
kill @e[type=villager,tag=!panling]
execute positioned -397 107 152 run function pld:npcs/west/travelling_trader
#区块卸载
forceload remove -399 149
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-37_10/pre 1t