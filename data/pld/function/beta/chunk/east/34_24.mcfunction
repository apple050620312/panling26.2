#区块强加载
forceload add 557 393 561 392
#要做的事
data merge block 547 35 395 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east10.text2"}','{"text":""}','{"text":""}']}}
data merge block 547 35 393 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east10.text2"}','{"text":""}','{"text":""}']}}
data merge block 544 36 396 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east10.text2"}','{"text":""}','{"text":""}']}}
data merge block 544 36 392 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east10.text2"}','{"text":""}','{"text":""}']}}

setblock 562 32 394 minecraft:command_block[custom_data={Command:"execute as @p[x=562,y=34,z=394,distance=..3] run function pld:system/altars/dragon/intodargon"}] replace 
#区块卸载
forceload remove 557 393 561 392
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/35_9 1t
