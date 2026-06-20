#要做的事
data merge block 851 59 -82 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east6.text2"}','{"text":""}','{"text":""}']}}

setblock 807 21 -70 minecraft:command_block{Command:"function pld:npcs/east/re2"} replace 

setblock 803 24 -70 minecraft:repeating_command_block{Command:"function pld:system/ex_ren/re_check"} replace 
data merge block 805 24 -70 {Items:[]}

setblock 816 25 -76 minecraft:command_block{Command:"execute as @p[x=796,y=18,z=-99,dx=41,dy=27,dz=57,scores={re_kill_bunny=1..}] run function pld:system/ex_ren/kill_rabbit"} replace 
kill @e[type=villager,tag=!panling]
execute positioned 807 21 -70 run function pld:npcs/east/re2
#区块卸载
forceload remove 811 -74 820 -68
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/51_6/pre 1t