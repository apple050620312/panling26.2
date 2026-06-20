#要做的事
data merge block 3217 70 827 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.zhp"}','{"translate":""}','{"translate":""}']}}

data merge block 3221 69 830 {front_text:{messages:['{"translate":"pl.sign.xian6.text1"}','{"translate":"pl.sign.xian6.text2"}','{"translate":"pl.sign.xian6.text4"}','{"translate":""}']}}

setblock 3223 66 815 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/tong5"}] replace 
setblock 3217 66 815 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/tong6"}] replace

setblock 3219 70 819 oak_door[half=lower] destroy
setblock 3219 71 819 oak_door[half=upper] destroy

setblock 3220 70 819 oak_door[half=lower,open=true,hinge=right] destroy
setblock 3220 71 819 oak_door[half=upper,open=true,hinge=right] destroy

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3223 66 815 run function pld:npcs/xian/tong5
execute positioned 3217 66 815 run function pld:npcs/xian/tong6
#区块卸载
forceload remove 3220 806 3221 821
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/201_53/pre 1t