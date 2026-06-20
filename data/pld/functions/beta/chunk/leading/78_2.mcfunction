#区块强加载
forceload add 1258 41 
#要做的事
data merge block 1258 78 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen1.text1"}','{"translate":"pl.sign.leading_shen1.text2"}','{"translate":"pl.sign.leading_shen1.text3"}','{"translate":"pl.sign.leading_shen1.text4"}']}}
data merge block 1259 78 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen2.text1"}','{"translate":"pl.sign.leading_shen2.text2"}','{"translate":"pl.sign.leading_shen2.text3"}','{"translate":"pl.sign.leading_shen2.text4"}']}}
data merge block 1260 78 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen3.text1"}','{"translate":"pl.sign.leading_shen3.text2"}','{"translate":"pl.sign.leading_shen3.text3"}','{"translate":"pl.sign.leading_shen3.text4"}']}}
data merge block 1258 77 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen4.text1"}','{"translate":"pl.sign.leading_shen4.text2"}','{"translate":"pl.sign.leading_shen4.text3"}','{"translate":"pl.sign.leading_shen4.text4"}']}}
data merge block 1259 77 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen5.text1"}','{"translate":"pl.sign.leading_shen5.text2"}','{"translate":"pl.sign.leading_shen5.text3"}','{"translate":"pl.sign.leading_shen5.text4"}']}}
data merge block 1258 76 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen6.text1"}','{"translate":"pl.sign.leading_shen6.text2"}','{"translate":"pl.sign.leading_shen6.text3"}','{"translate":"pl.sign.leading_shen6.text4"}']}}
data merge block 1259 76 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen7.text1"}','{"translate":"pl.sign.leading_shen7.text2"}','{"translate":"pl.sign.leading_shen7.text3"}','{"translate":"pl.sign.leading_shen7.text4"}']}}
data merge block 1260 76 38 {front_text:{messages:['{"translate":"pl.sign.leading_shen8.text1"}','{"translate":"pl.sign.leading_shen8.text2"}','{"translate":"pl.sign.leading_shen8.text3"}','{"translate":"pl.sign.leading_shen8.text4"}']}}

#区块卸载
forceload remove 1258 41 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/79_6 1t
