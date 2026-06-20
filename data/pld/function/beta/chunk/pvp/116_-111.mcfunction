#区块强加载
forceload add 1870 -1796 1871 -1775
forceload add 1873 -1777

#要做的事
setblock 1870 42 -1796 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1870,y=44,z=-1796,distance=..3] run function pld:pvp/2/ing/atk/check"}] replace 
data merge block 1873 53 -1777 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1871 53 -1775 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1869 53 -1777 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1871 53 -1779 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 1870 45 -1784 {front_text:{messages:['{"translate":"pl.sign.pvp_leave.text1"}','{"translate":"pl.sign.pvp_leave.text2"}','{"translate":"pl.sign.pvp_leave.text3"}','{"translate":"pl.sign.pvp_leave.text4"}']}}
data merge block 1870 45 -1791 {front_text:{messages:['{"translate":"pl.sign.pvp2_atk_in.text1"}','{"translate":"pl.sign.pvp2_atk_in.text2"}','{"translate":"pl.sign.pvp2_atk_in.text3"}','{"translate":"pl.sign.pvp2_atk_in.text4"}']}}

setblock 1870 42 -1782 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1870,y=44,z=-1782,distance=..2] run function pld:pvp/2/end/atk/reward"}] replace 

setblock 1870 44 -1784 air
#区块卸载
forceload remove 1870 -1796 1871 -1775
forceload remove 1873 -1777
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/116_-114 1t