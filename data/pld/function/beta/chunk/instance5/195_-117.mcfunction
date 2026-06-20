#区块强加载
forceload add 3124 -1864 3147 -1858
#要做的事
setblock 3147 126 -1816 minecraft:command_block[custom_data={Command:"function pld:instances/instance5/swamp/fill_position4"}] replace
setblock 3123 104 -1864 minecraft:command_block[custom_data={Command:"execute if entity @e[distance=..10,type=zombie] if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 unless score #system instance5_reset matches 1 run function pld:instances/instance5/sky/shut_off"}] replace

#区块卸载
forceload remove 3124 -1864 3147 -1858
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/198_-115 1t