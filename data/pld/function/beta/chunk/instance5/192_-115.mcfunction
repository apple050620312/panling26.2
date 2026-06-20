#区块强加载
forceload add 3084 -1838
#要做的事
setblock 3084 127 -1839 minecraft:command_block{Command:"execute unless entity @e[x=3084,y=131,z=-1840,distance=..2,type=blaze] run function pld:instances/instance5/boss_hp-1"} replace
#区块卸载
forceload remove 3084 -1838
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/192_-117 1t