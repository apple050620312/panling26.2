#区块强加载
forceload add 945 1187 942 1185
#要做的事
data merge block 941 73 1185 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.goldchest.text2"}','{"translate":"pl.sign.goldchest.text3"}','{"text":""}']}}
setblock 942 70 1185 minecraft:command_block{Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/goldchests/instance4/check"} replace
setblock 946 71 1193 minecraft:command_block{Command:"execute as @p[x=946,y=72,z=1192,distance=..10] run function pld:instances/instance4/reward"} replace
setblock 948 72 1189 minecraft:ender_chest[facing=west]
#区块卸载
forceload remove 945 1187 942 1185
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/61_86 1t