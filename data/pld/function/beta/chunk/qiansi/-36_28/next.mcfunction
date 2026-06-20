
#要做的事
data merge block -567 100 450 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -567 99 450 {front_text:{messages:['{"translate":"pl.spsign.qiansi1.text1"}','{"translate":"pl.spsign.qiansi1.text2","clickEvent":{"action":"run_command","value":"/tp @p[distance=..6] -445 95 347 -90 0"}}','{"translate":""}','{"translate":""}']}}
setblock -589 89 454 air
kill @e[type=villager,tag=!panling]
#区块卸载
forceload remove -565 450 -597 452
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-40_23/pre 1t