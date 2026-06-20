#区块强加载
forceload add 1739 -243 1766 -211
#要做的事

data merge block 1763 34 -215 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1741 26 -228 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1739 21 -230 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1738 30 -243 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1749 31 -250 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1755 29 -248 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1760 28 -241 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1765 22 -240 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1745 34 -236 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1764 38 -234 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}
data merge block 1766 29 -229 {front_text:{messages:['{"translate":"pl.sign.test_ren.watertip.text1"}','{"translate":"pl.sign.test_ren.watertip.text2"}','{"translate":"pl.sign.test_ren.watertip.text3"}','{"translate":"pl.sign.test_ren.watertip.text4"}']}}

#区块卸载
forceload remove 1739 -243 1766 -211
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/111_-10 1t