
#要做的事
data merge block 3285 77 965 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian14.text2"}','{"translate":"pl.frame.bjc"}','{"translate":""}']}}

setblock 3287 72 960 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3264 78 974 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/guard"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3287 72 960 run function pld:npcs/xian/guard
execute positioned 3264 78 974 run function pld:npcs/xian/guard
#区块卸载
forceload remove 3283 963 3256 968
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/205_61/pre 1t