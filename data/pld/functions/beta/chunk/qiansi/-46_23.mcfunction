#区块强加载
forceload add -772 383
#要做的事
data merge block -775 125 383 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi4.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove -772 383
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-48_29 1t