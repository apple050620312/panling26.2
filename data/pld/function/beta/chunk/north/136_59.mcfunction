#区块强加载
forceload add 2188 955
#要做的事
data merge block 2190 88 958 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north5.text2"}','{"translate":""}','{"translate":""}']}}
setblock 2188 84 957 minecraft:command_block[block_entity_data={Command:"tp @p[x=2190,y=87,z=958,distance=..10] -114 6 -413 -180 0"}] replace 
#区块卸载
forceload remove 2188 955
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/140_59 1t