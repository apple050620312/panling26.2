#区块强加载
forceload add 29 -5
#要做的事
data merge block 20 46 -8 {front_text:{messages:['{"translate":"pl.sign.middle62.text1"}','{"translate":"pl.sign.middle62.text2"}','{"translate":""}','{"translate":"pl.sign.middle62.text4"}']}}
data merge block 21 53 -7 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle63.text2"}','{"translate":"pl.sign.middle63.text3"}','{"translate":""}']}}

setblock 22 56 -6 air
data merge block 20 57 -2 {Items:[]}
setblock 20 57 -2 air
setblock 20 56 -2 air

#区块卸载
forceload remove 29 -5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/1_6 1t