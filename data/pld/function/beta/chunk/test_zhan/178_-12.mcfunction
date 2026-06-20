#区块强加载
forceload add 2854 -183 2843 -184
#要做的事
setblock 2848 26 -192 minecraft:command_block{Command:"execute as @p[x=2848,y=26,z=-190,distance=..3] run function pld:test/zhan/leave"} replace 
setblock 2848 24 -178 minecraft:repeating_command_block{Command:"execute as @p[x=2848,y=25,z=-180,distance=..3] run function pld:test/zhan/back"} replace 
data merge block 2848 24 -180 {Items:}

data merge block 2847 26 -190 {front_text:{messages:['{"translate":"pl.sign.test.leave1.text1"}','{"translate":"pl.sign.test.leave1.text2"}','{"translate":"pl.sign.test.leave1.text3"}','{"translate":"pl.sign.test.leave1.text4"}']}}
data merge block 2849 26 -190 {front_text:{messages:['{"translate":"pl.sign.test.leave2.text1"}','{"translate":"pl.sign.test.leave2.text2"}','{"translate":"pl.sign.test.leave2.text3"}','{"translate":"pl.sign.test.leave2.text4"}']}}
data merge block 2848 26 -180 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.test.relife.text2"}','{"translate":"pl.sign.test.relife.text3"}','{"translate":""}']}}

setblock 2861 24 -184 minecraft:command_block{Command:"execute as @p[x=2862,y=25,z=-184,distance=..3] run function pld:test/zhan/finish"} replace 
#区块卸载
forceload remove 2854 -183 2843 -184
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/179_-13 1t