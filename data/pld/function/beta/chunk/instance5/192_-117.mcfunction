#区块强加载
forceload add 3073 -1870
#要做的事
setblock 3073 138 -1870 minecraft:command_block[custom_data={Command:"execute unless entity @e[distance=..10,type=slime,nbt={Size:8}] if score @e[tag=instance5_skill,limit=1] instance5_mt matches 1 unless score #system instance5_reset matches 1 run function pld:instances/instance5/mountain/shut_off"}] replace

#区块卸载
forceload remove 3073 -1870
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/195_-114 1t