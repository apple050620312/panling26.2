#要做的事
data merge block 3332 129 261 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}']}}
data merge block 3340 129 261 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}']}}
data merge block 3332 129 258 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen14.text2"}','{"translate":""}','{"translate":""}']}}

setblock 3337 126 265 minecraft:stone_bricks
setblock 3328 123 259 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/chat3"}] replace 
setblock 3334 123 259 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/chat4"}] replace 
setblock 3344 123 259 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/chat5"}] replace 
setblock 3341 120 271 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 
setblock 3333 120 271 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3341 120 271 run function pld:npcs/shen/guard
execute positioned 3333 120 271 run function pld:npcs/shen/guard
execute positioned 3328 123 259 run function pld:npcs/shen/chat3
execute positioned 3334 123 259 run function pld:npcs/shen/chat4
execute positioned 3344 123 259 run function pld:npcs/shen/chat5
#区块卸载
forceload remove 3337 263 3345 263
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/208_21/pre 1t