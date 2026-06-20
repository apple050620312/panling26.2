#区块强加载
forceload add 1014 1413
#要做的事
data merge block 1015 71 1413 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.copperchest.text2"}','{"translate":"pl.sign.copperchest.text3"}','{"text":""}']}}
setblock 1015 68 1413 minecraft:command_block{Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/copperchests/instance1/check"} replace

#区块卸载
forceload remove 1014 1413
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/65_86 1t