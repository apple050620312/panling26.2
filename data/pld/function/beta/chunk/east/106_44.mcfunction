#区块强加载
forceload add 1697 715 1695 723
#要做的事
setblock 1696 113 713 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1697,y=118,z=713,distance=..3] run function pld:system/altars/dragon/intodragontest"}] replace 
setblock 1697 113 713 air

data merge block 1695 116 723 {front_text:{messages:['{"translate":"pl.sign.east11.text1"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block 1698 116 723 {front_text:{messages:['{"translate":"pl.sign.east11.text1"}','{"text":""}','{"text":""}','{"text":""}']}}

#区块卸载
forceload remove 1697 715 1695 723
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/106_55 1t