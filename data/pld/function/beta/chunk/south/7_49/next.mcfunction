
#要做的事
data merge block 122 50 795 {front_text:{messages:['{"translate":"pl.sign.south1.text1"}','{"translate":"pl.sign.south4.text2"}','{"translate":""}','{"translate":"pl.sign.south8.text4"}']}}
setblock 122 44 805 minecraft:command_block{Command:"function pld:npcs/south/texian"} replace
setblock 122 28 814 minecraft:command_block{Command:"function pld:npcs/south/sh4"} replace
data merge block 121 47 811 {Items:[]}
setblock 121 47 809 minecraft:repeating_command_block{Command:"function pld:system/truth/shen/4/check_in_room"} replace 

data merge block 124 33 817 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.sh4.text2"}','{"translate":"pl.sign.sh4.text3"}','{"translate":""}']}}
fill 121 33 817 121 32 817 air
setblock 124 32 819 minecraft:command_block{Command:"execute as @p[x=124,y=32,z=817,distance=..5] run function pld:system/truth/shen/4/check_reward"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 122 44 805 run function pld:npcs/south/texian
execute positioned 122 28 814 run function pld:npcs/south/sh4
#区块卸载
forceload remove 122 795 124 817
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/14_45/pre 1t