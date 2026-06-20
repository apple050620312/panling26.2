#区块强加载
forceload add 1318 457 
#要做的事
data merge block 1319 60 454 {front_text:{messages:['{"translate":"pl.sign.thanks1.text1"}','{"translate":"pl.sign.thanks1.text2"}','{"translate":"pl.sign.thanks1.text3"}','{"translate":"pl.sign.thanks1.text4"}']}}
data merge block 1320 60 454 {front_text:{messages:['{"translate":"pl.sign.thanks2.text1"}','{"translate":"pl.sign.thanks2.text2"}','{"translate":"pl.sign.thanks2.text3"}','{"translate":"pl.sign.thanks2.text4"}']}}
data merge block 1318 59 454 {front_text:{messages:['{"translate":"pl.sign.thanks3.text1"}','{"translate":"pl.sign.thanks3.text2"}','{"translate":"pl.sign.thanks3.text3"}','{"translate":"pl.sign.thanks3.text4"}']}}
data merge block 1319 59 454 {front_text:{messages:['{"translate":"pl.sign.thanks4.text1"}','{"translate":"pl.sign.thanks4.text2"}','{"translate":"pl.sign.thanks4.text3"}','{"translate":"pl.sign.thanks4.text4"}']}}
data merge block 1320 59 454 {front_text:{messages:['{"translate":"pl.sign.thanks5.text1"}','{"translate":"pl.sign.thanks5.text2"}','{"translate":"pl.sign.thanks5.text3"}','{"translate":"pl.sign.thanks5.text4"}']}}
data merge block 1321 59 454 {front_text:{messages:['{"translate":"pl.sign.thanks6.text1"}','{"translate":"pl.sign.thanks6.text2"}','{"translate":"pl.sign.thanks6.text3"}','{"translate":"pl.sign.thanks6.text4"}']}}
data merge block 1322 59 454 {front_text:{messages:['{"translate":"pl.sign.thanks7.text1"}','{"translate":"pl.sign.thanks7.text2"}','{"translate":"pl.sign.thanks7.text3"}','{"translate":"pl.sign.thanks7.text4"}']}}
data merge block 1323 59 454 {front_text:{messages:['{"translate":"pl.sign.thanks8.text1"}','{"translate":"pl.sign.thanks8.text2"}','{"translate":"pl.sign.thanks8.text3"}','{"translate":"pl.sign.thanks8.text4"}']}}
data merge block 1319 58 454 {front_text:{messages:['{"translate":"pl.sign.thanks9.text1"}','{"translate":"pl.sign.thanks9.text2"}','{"translate":"pl.sign.thanks9.text3"}','{"translate":"pl.sign.thanks9.text4"}']}}
data merge block 1320 58 454 {front_text:{messages:['{"translate":"pl.sign.thanks10.text1"}','{"translate":"pl.sign.thanks10.text2"}','{"translate":"pl.sign.thanks10.text3"}','{"translate":"pl.sign.thanks10.text4"}']}}
data merge block 1325 59 456 {front_text:{messages:['{"translate":"pl.sign.begin.text1"}','{"translate":"pl.sign.begin.text2"}','{"translate":"pl.sign.begin.text3"}','{"translate":"pl.sign.begin.text4"}']}}
setblock 1326 56 456 minecraft:command_block{Command:"execute as @p[x=1326,y=58,z=456,distance=..5] run function pld:selections/intopangu"}

#区块卸载
forceload remove 1318 457 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/83_2 1t
