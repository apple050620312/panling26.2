#区块强加载
forceload add -618 -635
#要做的事
setblock -619 105 -640 minecraft:command_block[block_entity_data={Command:"/tp @p[distance=..3] -628 104 -645 135 0"}] replace 
#区块卸载
forceload remove -618 -635
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-39_11 1t