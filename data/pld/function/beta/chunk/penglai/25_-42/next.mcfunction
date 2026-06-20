
#要做的事
data merge block 415 36 -644 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai1.text2"}','{"translate":""}','{"translate":""}']}}
setblock 418 32 -652 minecraft:command_block[block_entity_data={Command:"function pld:npcs/penglai/chat1"}] replace 
data merge block 401 41 -654 {front_text:{messages:['{"translate":"pl.sign.penglai2.text1"}','{"translate":"pl.sign.penglai2.text2"}','{"translate":""}','{"translate":"pl.sign.penglai2.text4"}']}}

kill @e[type=villager,tag=!panling]
execute positioned 418 32 -652 run function pld:npcs/penglai/chat1
#区块卸载
forceload remove 415 -642 420 -645
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/85_27/pre 1t