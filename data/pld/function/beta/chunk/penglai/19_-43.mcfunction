#区块强加载
forceload add 319 -684 321 -684
#要做的事
data merge block 309 28 -685 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.lds1.text2"}','{"translate":"pl.sign.lds1.text3"}','{"translate":""}']}}
data merge block 321 28 -685 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.lds1.text2"}','{"translate":"pl.sign.lds1.text3"}','{"translate":""}']}}
setblock 307 29 -685 minecraft:command_block{Command:"function pld:system/ld/ldmain"} replace 
setblock 323 29 -685 minecraft:command_block{Command:"function pld:system/ld/ldmain"} replace 
data merge block 319 28 -685 {CustomName:'{"translate":"pl.name.ldl"}'}
data merge block 311 28 -685 {CustomName:'{"translate":"pl.name.ldl"}'}

setblock 315 25 -680 minecraft:command_block{Command:"tp @p[x=315,y=28,z=-680,distance=..2] 353 53 -672"} replace 

#区块卸载
forceload remove 319 -684 321 -684
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/19_-46 1t