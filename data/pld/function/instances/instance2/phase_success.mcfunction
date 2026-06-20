#喊话
tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate": "pl.info.instance2.hurt"}
bossbar set pl:instance2_core visible false
#清图
scoreboard players set #system instance2_weak 0
execute as @e[x=1052,y=3,z=864,dx=82,dy=55,dz=64,type=!player,type=!armor_stand] run tp @s ~ -1000 ~
schedule clear pld:instances/instance2/damage/delay
#血量降低
scoreboard players remove #system instance2_hp 1
#动画
scoreboard players set #system instance2_partic 40
schedule clear pld:instances/instance2/phase
execute if score #system instance2_hp matches 1.. run schedule function pld:instances/instance2/phase 4s
execute if score #system instance2_hp matches 0 run function pld:instances/instance2/finish