#区块强加载
forceload add 309 -731
#要做的事
data merge block 315 34 -735 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai12.text2"}','{"translate":"pl.sign.penglai12.text3"}','{"translate":""}']}}
setblock 310 32 -735 minecraft:command_block[custom_data={Command:"tp @p[distance=..3] 12 34 -908 90 ~"}] replace 

#区块卸载
forceload remove 309 -731
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/26_-40 1t