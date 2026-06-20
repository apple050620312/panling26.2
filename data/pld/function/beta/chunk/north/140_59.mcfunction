#区块强加载
forceload add 2244 957
#要做的事
data merge block 2241 92 958 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north6.text2"}','{"translate":""}','{"translate":""}']}}

setblock 2241 89 958 minecraft:command_block{Command:"execute as @p[x=2241,y=91,z=958,distance=..10] run function pld:system/altars/turtle/intoturtletest"} replace 
#区块卸载
forceload remove 2244 957
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/north_end 1t