#区块强加载
forceload add 1365 -1816 1354 -1826
#要做的事
setblock 1354 56 -1826 air

data merge block 1365 57 -1816 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1363 57 -1814 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1361 57 -1816 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1363 57 -1818 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}


data merge block 1354 57 -1826 {front_text:{messages:['{"translate":"pl.sign.pvp_leave.text1"}','{"translate":"pl.sign.pvp_leave.text2"}','{"translate":"pl.sign.pvp_leave.text3"}','{"translate":"pl.sign.pvp_leave.text4"}']}}
data merge block 1361 57 -1826 {front_text:{messages:['{"translate":"pl.sign.pvp1_def_in.text1"}','{"translate":"pl.sign.pvp1_def_in.text2"}','{"translate":"pl.sign.pvp1_def_in.text3"}','{"translate":"pl.sign.pvp1_def_in.text4"}']}}

setblock 1366 54 -1826 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1366,y=56,z=-1826,distance=..3] run function pld:pvp/1/ing/def/check"}] replace 
setblock 1352 54 -1826 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1352,y=56,z=-1826,distance=..2] run function pld:pvp/1/end/def/reward"}] replace 

#区块卸载
forceload remove 1365 -1816 1354 -1826

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/84_-116 1t