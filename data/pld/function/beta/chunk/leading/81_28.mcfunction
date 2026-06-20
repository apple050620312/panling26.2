#区块强加载
forceload add 1311 457 
#要做的事
data merge block 1311 59 455 {front_text:{messages:['{"translate":"pl.sign.reselsect.text1"}','{"translate":"pl.sign.reselsect.text2"}','{"translate":"pl.sign.reselsect.text3"}','{"translate":"pl.sign.reselsect.text4"}']}}
setblock 1309 59 456 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 1315 76 42"}] replace 
#区块卸载
forceload remove 1311 457 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/82_2 1t
