#区块强加载
forceload add 2297 -947
#要做的事
data merge block 2298 79 -948 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west11.text2"}','{"translate":""}','{"translate":""}']}}
setblock 2298 80 -946 minecraft:command_block[block_entity_data={Command:"execute as @p[distance=..5] run function pld:system/altars/tiger/outtiger"}] replace 
#区块卸载
forceload remove 2297 -947
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/west_end 1t