
#要做的事

setblock 3202 23 -313 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/guard5"}] replace 
setblock 3219 22 -321 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/guard6"}] replace 

data merge block 3214 20 -314 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan4.text2"}','{"translate":"pl.sign.zhan4.text3"}','{"translate":""}']}}
data merge block 3211 20 -313 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan5.text2"}','{"translate":"pl.sign.zhan5.text3"}','{"translate":""}']}}
data merge block 3208 20 -316 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan3.text2"}','{"translate":"pl.sign.zhan2.text2"}','{"translate":""}']}}

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self

execute positioned 3202 23 -313 run function pld:npcs/zhan/guard5
execute positioned 3219 22 -321 run function pld:npcs/zhan/guard6

#区块卸载
forceload remove 3221 -323 3211 -316
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/201_-18/pre 1t