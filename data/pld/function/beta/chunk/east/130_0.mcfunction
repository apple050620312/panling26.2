#区块强加载
forceload add 2086 6
#要做的事
data merge block 2084 60 6 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.dragontest1.text2"}','{"translate":"pl.sign.dragontest1.text3"}','{"text":""}']}}
data merge block 2083 60 6 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.dragontest2.text2"}','{"translate":"pl.sign.dragontest2.text3"}','{"translate":"pl.sign.dragontest2.text4"}']}}
data merge block 2082 60 6 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.dragontest3.text2"}','{"translate":"pl.sign.dragontest3.text3"}','{"translate":"pl.sign.dragontest3.text4"}']}}
data merge block 2083 59 6 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.dragontest4.text2"}','{"text":""}','{"text":""}']}}
data merge block 2083 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"text":""}','{"translate":"pl.sign.dragontest5.text4"}']}}

#区块卸载
forceload remove 2086 6
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/131_0 1t