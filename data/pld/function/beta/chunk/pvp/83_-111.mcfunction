#区块强加载
forceload add 1343 -1776 1377 -1777
#要做的事
setblock 1345 51 -1776 air

data merge block 1363 57 -1779 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1366 57 -1776 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1363 57 -1773 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1360 57 -1776 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1345 52 -1776 {front_text:{messages:['{"translate":"pl.sign.pvp_leave.text1"}','{"translate":"pl.sign.pvp_leave.text2"}','{"translate":"pl.sign.pvp_leave.text3"}','{"translate":"pl.sign.pvp_leave.text4"}']}}
data merge block 1352 52 -1776 {front_text:{messages:['{"translate":"pl.sign.pvp1_atk_in.text1"}','{"translate":"pl.sign.pvp1_atk_in.text2"}','{"translate":"pl.sign.pvp1_atk_in.text3"}','{"translate":"pl.sign.pvp1_atk_in.text4"}']}}
data merge block 1372 57 -1778 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.pvp1_atk_tp1.text2"}','{"translate":"pl.sign.pvp1_atk_tp1.text3"}','{"translate":""}']}}
data merge block 1374 57 -1776 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.pvp1_atk_tp2.text2"}','{"translate":"pl.sign.pvp1_atk_tp2.text3"}','{"translate":""}']}}
data merge block 1372 57 -1774 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.pvp1_atk_tp3.text2"}','{"translate":"pl.sign.pvp1_atk_tp3.text3"}','{"translate":""}']}}

setblock 1356 49 -1776 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1356,y=51,z=-1776,distance=..3] run function pld:pvp/1/ing/atk/check"}] replace 
setblock 1343 49 -1776 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1343,y=51,z=-1776,distance=..2] run function pld:pvp/1/end/atk/reward"}] replace 

setblock 1372 53 -1772 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..3] 1445 125 -1719 180 0"}] replace 
setblock 1376 53 -1776 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..3] 1399 107 -1772 135 30"}] replace 
setblock 1372 53 -1780 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..3] 1319 104 -1876 -45 -20"}] replace 

#区块卸载
forceload remove 1343 -1776 1377 -1777

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/84_-115 1t