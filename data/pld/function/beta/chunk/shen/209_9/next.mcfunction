
#要做的事
data merge block 3328 156 154 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen15.text3"}','{"translate":""}']}}
data merge block 3344 156 154 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text2"}','{"translate":"pl.sign.shen15.text3"}','{"translate":""}']}}


setblock 3327 151 152 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/chat1"}] replace 
setblock 3345 151 152 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/chat2"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3327 151 152 run function pld:npcs/shen/chat1
execute positioned 3345 151 152 run function pld:npcs/shen/chat2
#区块卸载
forceload remove 3323 155 3348 155
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/209_22/pre 1t