#区块强加载
forceload add 2331 -1798 2391 -1799
#要做的事
setblock 2333 182 -1801 minecraft:command_block{Command:"execute as @p[x=2333,y=184,z=-1801,distance=..2] run function pld:pvp/3/end/atk/reward"} replace 
setblock 2393 182 -1801 minecraft:command_block{Command:"execute as @p[x=2393,y=184,z=-1801,distance=..2] run function pld:pvp/3/end/def/reward"} replace 
setblock 2391 184 -1801 air
setblock 2335 184 -1801 air
data merge block 2342 185 -1801 {front_text:{messages:['{"translate":"pl.sign.pvp3_atk_in.text1"}','{"translate":"pl.sign.pvp3_atk_in.text2"}','{"translate":"pl.sign.pvp3_atk_in.text3"}','{"translate":"pl.sign.pvp3_atk_in.text4"}']}}
data merge block 2335 185 -1801 {front_text:{messages:['{"translate":"pl.sign.pvp_leave.text1"}','{"translate":"pl.sign.pvp_leave.text2"}','{"translate":"pl.sign.pvp_leave.text3"}','{"translate":"pl.sign.pvp_leave.text4"}']}}

data merge block 2384 185 -1801 {front_text:{messages:['{"translate":"pl.sign.pvp3_def_in.text1"}','{"translate":"pl.sign.pvp3_def_in.text2"}','{"translate":"pl.sign.pvp3_def_in.text3"}','{"translate":"pl.sign.pvp3_def_in.text4"}']}}
data merge block 2391 185 -1801 {front_text:{messages:['{"translate":"pl.sign.pvp_leave.text1"}','{"translate":"pl.sign.pvp_leave.text2"}','{"translate":"pl.sign.pvp_leave.text3"}','{"translate":"pl.sign.pvp_leave.text4"}']}}

data merge block 2382 180 -1801 {front_text:{messages:['{"translate":"pl.sign.pvp3_in.text1"}','{"translate":"pl.sign.pvp3_in.text2"}','{"translate":"pl.sign.pvp3_in.text3"}','{"translate":"pl.sign.pvp3_in.text4"}']}}
data merge block 2334 180 -1801 {front_text:{messages:['{"translate":"pl.sign.pvp3_in.text1"}','{"translate":"pl.sign.pvp3_in.text2"}','{"translate":"pl.sign.pvp3_in.text3"}','{"translate":"pl.sign.pvp3_in.text4"}']}}

data merge block 2370 216 -1799 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2368 216 -1801 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2370 216 -1803 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2372 216 -1801 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2349 216 -1801 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2347 216 -1799 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2345 216 -1801 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2347 216 -1803 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife_cd.text2"}','{"translate":""}','{"translate":""}']}}
setblock 2333 178 -1801 minecraft:command_block{Command:"execute as @p[x=2334,y=179,z=-1801,distance=..3] run function pld:pvp/3/ing/atk/check"} replace 
setblock 2381 178 -1801 minecraft:command_block{Command:"execute as @p[x=2382,y=179,z=-1801,distance=..3] run function pld:pvp/3/ing/def/check"} replace 

#区块卸载
forceload remove 2331 -1798 2391 -1799

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/pvp_end 1t