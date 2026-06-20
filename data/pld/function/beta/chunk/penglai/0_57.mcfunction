#区块强加载
forceload add 12 -907
#要做的事
data merge block 8 34 -908 {front_text:{messages:['{"translate":"pl.sign.penglai13.text1"}','{"translate":""}','{"translate":""}','{"translate":""}']}}
setblock 14 32 -908 minecraft:command_block[custom_data={Command:"tp @p[distance=..3,scores={dragon=1,bird=1,tiger=1,turtle=1}] 308 34 -735"}] replace
fill 9 33 -910 9 33 -909 minecraft:barrier

#区块卸载
forceload remove 12 -907
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/16_-44 1t