#区块强加载
forceload add 1870 -1818 1872 -1832
#要做的事
setblock 1870 42 -1814 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1870,y=44,z=-1814,distance=..3] run function pld:pvp/2/ing/def/check"}] replace 
data merge block 1870 56 -1830 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1868 56 -1832 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1870 56 -1834 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1872 56 -1832 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 1870 45 -1825 {front_text:{messages:['{"translate":"pl.sign.pvp_leave.text1"}','{"translate":"pl.sign.pvp_leave.text2"}','{"translate":"pl.sign.pvp_leave.text3"}','{"translate":"pl.sign.pvp_leave.text4"}']}}
data merge block 1870 45 -1818 {front_text:{messages:['{"translate":"pl.sign.pvp2_def_in.text1"}','{"translate":"pl.sign.pvp2_def_in.text2"}','{"translate":"pl.sign.pvp2_def_in.text3"}','{"translate":"pl.sign.pvp2_def_in.text4"}']}}

setblock 1870 42 -1827 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1870,y=44,z=-1827,distance=..2] run function pld:pvp/2/end/def/reward"}] replace 


setblock 1870 44 -1825 air
#区块卸载
forceload remove 1870 -1818 1872 -1832

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/117_-110 1t