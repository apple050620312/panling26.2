#区块强加载
forceload add -84 -135 -89 -146
#要做的事
data merge block -87 44 -133 {front_text:{messages:['{"translate":"pl.sign.west6.text1"}','{"translate":"pl.sign.west6.text2"}','{"translate":"pl.sign.west6.text3"}','{"translate":""}']}}
data merge block -86 48 -145 {front_text:{messages:['{"translate":"pl.sign.west7.text1"}','{"translate":""}','{"translate":"pl.sign.west7.text3"}','{"translate":"pl.sign.west7.text4"}']}}

#区块卸载
forceload remove -84 -135 -89 -146
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-9_8 1t