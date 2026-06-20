
#要做的事
setblock 2767 49 833 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/chat9"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 2767 49 833 run function pld:npcs/yao/chat9
#区块卸载
forceload remove 2770 835 2765 836
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/173_54/pre 1t