#区块强加载
forceload add 3124 -1817 3150 -1837
#要做的事
setblock 3144 126 -1857 minecraft:command_block[custom_data={Command:"function pld:instances/instance5/swamp/fill_position2"}] replace
setblock 3121 150 -1820 minecraft:netherrack
setblock 3122 145 -1817 minecraft:command_block[custom_data={Command:"execute unless entity @e[distance=..10,type=wither_skeleton] if score @e[tag=instance5_skill,limit=1] instance5_fire matches 1 unless score #system instance5_reset matches 1 run function pld:instances/instance5/fire/shut_off"}] replace
setblock 3132 107 -1827 minecraft:command_block[custom_data={Command:"execute if score @e[tag=instance5_skill,limit=1] instance5_earth matches 1 unless score #system instance5_reset matches 1 run function pld:instances/instance5/earth/shut_off"}] replace
setblock 3149 189 -1840 minecraft:command_block[custom_data={Command:"execute unless entity @e[x=3153,y=190,z=-1845,dx=0,dy=0,dz=10,type=silverfish] if score @e[tag=instance5_skill,limit=1] instance5_light matches 1 unless score #system instance5_reset matches 1 run function pld:instances/instance5/light/shut_off"}] replace



#区块卸载
forceload remove 3124 -1817 3150 -1837
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/195_-117 1t
