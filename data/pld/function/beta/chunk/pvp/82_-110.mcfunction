#区块强加载
forceload add 1321 -1746

#要做的事
data merge block 1321 105 -1746 {front_text:{messages:['{"translate":"pl.sign.pvp1_get_minecart.text1","clickEvent":{"action":"run_command","value":"/execute as @p run function pld:pvp/1/ing/reset_minecart"}}','{"translate":"pl.sign.pvp1_get_minecart.text2"}','{"translate":"pl.sign.pvp1_get_minecart.text3"}','{"translate":"pl.sign.pvp1_get_minecart.text4"}']}}

#区块卸载
forceload remove 1321 -1746

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/83_-111 1t