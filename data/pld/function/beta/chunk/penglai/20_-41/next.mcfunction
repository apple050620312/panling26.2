#要做的事
data merge block 327 39 -655 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai6.text2"}','{"translate":""}','{"translate":""}']}}
setblock 330 40 -662 minecraft:command_block[block_entity_data={Command:"function pld:npcs/penglai/yaomain8"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 330 40 -662 run function pld:npcs/penglai/yaomain8
#区块卸载
forceload remove 330 -663 328 -653
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/21_-43/pre 1t