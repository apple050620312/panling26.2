#要做的事
data merge block 344 35 -526 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north11.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 344 34 -526 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north12.text2"}','{"translate":"pl.sign.north12.text3"}','{"translate":""}']}}
setblock 346 31 -541 minecraft:command_block[block_entity_data={Command:"execute as @p[x=345,y=33,z=-541,distance=..5] run function pld:system/tppenglai"}] replace 
setblock 345 31 -541 minecraft:command_block[block_entity_data={Command:"execute as @p[x=345,y=33,z=-541,distance=..5] run function pld:system/tppenglai"}] replace 

setblock 354 31 -515 minecraft:command_block[block_entity_data={Command:"function pld:npcs/north/chat3"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 354 31 -515 run function pld:npcs/north/chat3
#区块卸载
forceload remove 346 -541 354 -515
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-3_-35 1t