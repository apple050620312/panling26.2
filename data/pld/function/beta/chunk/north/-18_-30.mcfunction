#区块强加载
forceload add -274 -466
#要做的事
data merge block -273 78 -465 {front_text:{messages:['{"translate":"pl.sign.north1.text1"}','{"translate":"pl.sign.north1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -274 78 -466 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north2.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove -274 -466
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-18_-31 1t