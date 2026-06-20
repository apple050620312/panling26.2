#区块强加载
forceload add 265 -14
#要做的事

data merge block 265 50 -14 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/execute as @p run function pld:system/ex_sword/get_sword_ren"}}','{"translate":"pl.sign.sword_ren.text2"}','{"translate":""}','{"translate":""}']}}


#区块卸载
forceload remove 265 -14
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/16_-14 1t