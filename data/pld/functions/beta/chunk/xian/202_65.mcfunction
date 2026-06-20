#区块强加载
forceload add 3234 1040
#要做的事
data merge block 3234 30 1040 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/execute as @p run function pld:system/ex_sword/get_sword_sky"}}','{"translate":"pl.sign.sword_sky.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 3234 1040
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/204_50 1t