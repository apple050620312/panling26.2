
#要做的事
setblock 2645 98 917 minecraft:command_block{Command:"function pld:npcs/yao/tong5"} replace 
setblock 2647 98 917 minecraft:command_block{Command:"function pld:npcs/yao/tong6"} replace 
setblock 2646 98 917 minecraft:command_block{Command:"function pld:npcs/yao/yaotong7"} replace 

setblock 2645 99 923 minecraft:command_block{Command:"particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"} replace
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2645 98 917 run function pld:npcs/yao/tong5 
execute positioned 2647 98 917 run function pld:npcs/yao/tong6
execute positioned 2646 98 917 run function pld:npcs/yao/yaotong7
#区块卸载
forceload remove 2649 919
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/170_51/pre 1t