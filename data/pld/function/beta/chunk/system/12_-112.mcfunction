#区块强加载
forceload add 203 -1786 210 -1786
#要做的事
data merge block 202 55 -1788 {front_text:{messages:['{"translate":"pl.sign.relife2.text1"}','{"translate":"pl.sign.relife2.text2"}','{"translate":"pl.sign.relife2.text3"}','{"translate":"pl.sign.relife2.text4"}']}}
data merge block 202 54 -1787 {front_text:{messages:['{"translate":"pl.sign.relife3.text1"}','{"translate":"pl.sign.relife3.text2"}','{"translate":"pl.sign.relife3.text3"}','{"translate":""}']}}
data merge block 205 55 -1788 {front_text:{messages:['{"translate":"pl.sign.relife4.text1"}','{"translate":"pl.sign.relife4.text2"}','{"translate":"pl.sign.relife4.text3"}','{"translate":"pl.sign.relife4.text4"}']}}
data merge block 208 55 -1788 {front_text:{messages:['{"translate":"pl.sign.relife5.text1"}','{"translate":"pl.sign.relife5.text2"}','{"translate":"pl.sign.relife5.text3"}','{"translate":""}']}}
data merge block 208 54 -1787 {front_text:{messages:['{"translate":"pl.sign.relife6.text1"}','{"translate":"pl.sign.relife6.text2"}','{"translate":"pl.sign.relife6.text3"}','{"translate":""}']}}
setblock 209 53 -1789 air
setblock 208 53 -1791 air
setblock 208 53 -1788 hopper replace
setblock 208 53 -1790 minecraft:repeating_command_block[block_entity_data={Command:"function pld:system/relife/rightcheck"}] replace 

setblock 205 52 -1788 minecraft:command_block[block_entity_data={Command:"execute as @p[x=205,y=54,z=-1788,distance=..7] run function pld:system/relife/middle"}] replace 

setblock 201 53 -1789 air
setblock 202 53 -1791 air
setblock 202 53 -1788 hopper replace
setblock 202 53 -1790 minecraft:repeating_command_block[block_entity_data={Command:"function pld:system/relife/leftcheck"}] replace

#区块卸载
forceload remove 203 -1786 210 -1786
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/75_40 1t