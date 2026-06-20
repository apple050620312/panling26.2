#区块强加载
forceload add 687 115
#要做的事
data merge block 687 72 122 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east7.text2"}','{"text":""}','{"text":""}']}}

setblock 686 68 113 minecraft:command_block{Command:"function pld:system/spawnpoint/spawnpointset"} replace 
#区块卸载
forceload remove 687 115
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/43_1 1t