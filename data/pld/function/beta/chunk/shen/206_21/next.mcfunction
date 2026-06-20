#要做的事
data merge block 3311 116 384 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.supply.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3308 116 377 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.bjc0"}','{"translate":""}','{"translate":""}']}}

data merge block 3303 112 353 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.qz"}','{"translate":""}','{"translate":""}']}}

data merge block 3306 112 353 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.qz"}','{"translate":""}','{"translate":""}']}}


setblock 3305 109 339 minecraft:command_block[block_entity_data={Command:"particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"}] replace 

setblock 3303 108 341 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/shentong7"}] replace 
setblock 3305 110 376 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/chat7"}] replace 
setblock 3298 108 390 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/se2"}] replace 
setblock 3310 110 381 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/supply0"}] replace 
setblock 3311 110 365 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 

data merge block 3304 116 367 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen5.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3303 116 368 {front_text:{messages:['{"translate":"pl.sign.shen10.text1"}','{"translate":"pl.sign.shen10.text2"}','{"translate":"pl.sign.shen10.text3"}','{"translate":""}']}}
data merge block 3305 116 374 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen8.text2"}','{"translate":"pl.sign.shen8.text3"}','{"translate":"pl.sign.shen9.text4"}']}}

setblock 3311 114 385 minecraft:command_block[block_entity_data={Command:"function pld:system/supply/supplymain"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self

execute positioned 3311 110 365 run function pld:npcs/shen/guard
execute positioned 3303 108 341 run function pld:npcs/shen/shentong7
execute positioned 3305 110 376 run function pld:npcs/shen/chat7
execute positioned 3298 108 390 run function pld:npcs/shen/se2
execute positioned 3310 110 381 run function pld:npcs/shen/supply0
#区块卸载
forceload remove 3304 389 3305 342
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/207_22/pre 1t