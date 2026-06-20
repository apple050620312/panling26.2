#区块强加载
forceload add 3253 -1866 3242 -1876
#要做的事
data merge block 3255 129 -1874 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.goldchest.text2"}','{"translate":"pl.sign.goldchest.text3"}','{"text":""}']}}
data merge block 3241 129 -1874 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance5.1.text2"}','{"text":""}','{"text":""}']}}

setblock 3239 126 -1874 minecraft:command_block[block_entity_data={Command:"execute as @p[x=3239,y=128,z=-1874,distance=..5] run function pld:instances/instance5/reward"}] replace
setblock 3254 126 -1874 minecraft:command_block[block_entity_data={Command:"execute as @p[distance=..10] positioned ~ ~3 ~ run function pld:system/chests/goldchests/instance5/check"}] replace
data merge block 3244 129 -1857 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance5.2.text2"}','{"text":""}','{"text":""}']}}
data merge block 3256 129 -1857 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance5.3.text2"}','{"text":""}','{"text":""}']}}

setblock 3258 128 -1857 minecraft:command_block[block_entity_data={Command:"execute as @p[x=3256,y=128,z=-1857,distance=..4] run function pld:instances/instance5/leave"}] replace
setblock 3242 128 -1857 minecraft:command_block[block_entity_data={Command:"execute as @p[x=3244,y=126,z=-1859,dx=2,dy=5,dz=2] run function pld:instances/instance5/back"}] replace
#区块卸载
forceload remove 3253 -1866 3242 -1876
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/instance5_end 1t