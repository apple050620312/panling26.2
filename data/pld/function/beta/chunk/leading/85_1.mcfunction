
#区块强加载
forceload add 1369 19 
#要做的事
data merge block 1364 78 16 {front_text:{messages:['{"translate":"pl.sign.leading_yao10.text1"}','{"translate":"pl.sign.leading_yao10.text2"}','{"translate":"pl.sign.leading_yao10.text3"}','{"translate":"pl.sign.leading_yao10.text4"}']}}
#区块卸载
forceload remove 1369 19 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count

#链接下一个chunk
schedule function pld:beta/chunk/leading/leading_end 1t