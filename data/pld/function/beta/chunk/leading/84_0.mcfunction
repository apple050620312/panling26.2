
#区块强加载
forceload add 1348 7 
#要做的事

data merge block 1347 79 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao1.text1"}','{"translate":"pl.sign.leading_yao1.text2"}','{"translate":"pl.sign.leading_yao1.text3"}','{"translate":"pl.sign.leading_yao1.text4"}']}}
data merge block 1348 79 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao2.text1"}','{"translate":"pl.sign.leading_yao2.text2"}','{"translate":"pl.sign.leading_yao2.text3"}','{"translate":"pl.sign.leading_yao2.text4"}']}}
data merge block 1349 79 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao3.text1"}','{"translate":"pl.sign.leading_yao3.text2"}','{"translate":"pl.sign.leading_yao3.text3"}','{"translate":"pl.sign.leading_yao3.text4"}']}}
data merge block 1347 78 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao4.text1"}','{"translate":"pl.sign.leading_yao4.text2"}','{"translate":"pl.sign.leading_yao4.text3"}','{"translate":"pl.sign.leading_yao4.text4"}']}}
data merge block 1348 78 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao5.text1"}','{"translate":"pl.sign.leading_yao5.text2"}','{"translate":"pl.sign.leading_yao5.text3"}','{"translate":"pl.sign.leading_yao5.text4"}']}}
data merge block 1349 78 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao6.text1"}','{"translate":"pl.sign.leading_yao6.text2"}','{"translate":"pl.sign.leading_yao6.text3"}','{"translate":"pl.sign.leading_yao6.text4"}']}}
data merge block 1347 77 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao7.text1"}','{"translate":"pl.sign.leading_yao7.text2"}','{"translate":"pl.sign.leading_yao7.text3"}','{"translate":"pl.sign.leading_yao7.text4"}']}}
data merge block 1348 77 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao8.text1"}','{"translate":"pl.sign.leading_yao8.text2"}','{"translate":"pl.sign.leading_yao8.text3"}','{"translate":"pl.sign.leading_yao8.text4"}']}}
data merge block 1349 77 14 {front_text:{messages:['{"translate":"pl.sign.leading_yao9.text1"}','{"translate":"pl.sign.leading_yao9.text2"}','{"translate":"pl.sign.leading_yao9.text3"}','{"translate":"pl.sign.leading_yao9.text4"}']}}
#区块卸载
forceload remove 1348 7 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count

#链接下一个chunk
schedule function pld:beta/chunk/leading/84_4 1t
