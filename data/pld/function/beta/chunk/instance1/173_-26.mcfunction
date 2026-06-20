#区块强加载
forceload add 2781 -408 2786 -408
#要做的事
data merge block 2783 80 -408 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.goldchest.text2"}','{"translate":"pl.sign.goldchest.text3"}','{"text":""}']}}
data merge block 2779 81 -413 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance.a7.text2"}','{"text":""}','{"text":""}']}}
setblock 2783 77 -409 minecraft:command_block[custom_data={Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/goldchests/instance1/check"}] replace 
setblock 2779 77 -413 minecraft:command_block[custom_data={Command:"execute as @p[x=2779,y=79,z=-413,distance=..3] run function pld:instances/instance1/reward"}] replace 
setblock 2783 79 -415 minecraft:ender_chest[facing=south]

#区块卸载
forceload remove 2781 -408 2786 -408
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance1/176_-26 1t