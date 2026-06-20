#区块强加载
forceload add 1661 -229 1659 -222
#要做的事
data merge block 1662 24 -225 {Items:[]}
setblock 1662 26 -237 minecraft:command_block[custom_data={Command:"execute as @p[x=1662,y=26,z=-235,distance=..3] run function pld:test/ren/leave"}] replace 
setblock 1662 24 -223 minecraft:repeating_command_block[custom_data={Command:"execute as @p[x=1662,y=25,z=-225,distance=..3] run function pld:test/ren/back"}] replace 
data merge block 1661 26 -235 {front_text:{messages:['{"translate":"pl.sign.test.leave1.text1"}','{"translate":"pl.sign.test.leave1.text2"}','{"translate":"pl.sign.test.leave1.text3"}','{"translate":"pl.sign.test.leave1.text4"}']}}
data merge block 1663 26 -235 {front_text:{messages:['{"translate":"pl.sign.test.leave2.text1"}','{"translate":"pl.sign.test.leave2.text2"}','{"translate":"pl.sign.test.leave2.text3"}','{"translate":"pl.sign.test.leave2.text4"}']}}
data merge block 1662 26 -225 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.test.relife.text2"}','{"translate":"pl.sign.test.relife.text3"}','{"translate":""}']}}


#区块卸载
forceload remove 1661 -229 1659 -222
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/104_-12 1t