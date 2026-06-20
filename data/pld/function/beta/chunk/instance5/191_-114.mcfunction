#区块强加载
forceload add 3062 -1821
#要做的事
setblock 3065 169 -1821 minecraft:command_block[custom_data={Command:"execute unless entity @e[distance=..10,type=elder_guardian] if score @e[tag=instance5_skill,limit=1] instance5_water matches 1 unless score #system instance5_reset matches 1 run function pld:instances/instance5/water/shut_off"}] replace

#区块卸载
forceload remove 3062 -1821
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/192_-113 1t
