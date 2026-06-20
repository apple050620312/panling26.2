#区块强加载
forceload add 1158 889
#要做的事
data merge block 1158 58 895 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.goldchest.text2"}','{"translate":"pl.sign.goldchest.text3"}','{"text":""}']}}
data merge block 1158 58 885 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance2.a1.text2"}','{"text":""}','{"text":""}']}}

setblock 1158 55 894 minecraft:command_block{Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/goldchests/instance2/check"} replace 
setblock 1158 55 884 minecraft:command_block{Command:"execute as @p[x=1158,y=57,z=884,distance=..3] run function pld:instances/instance2/reward"} replace 
setblock 1153 58 891 minecraft:ender_chest[facing=east]

#区块卸载
forceload remove 1158 889
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance2/73_54 1t