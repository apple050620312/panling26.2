#清图
scoreboard players set #system instance2_weak 0
execute as @e[x=1052,y=3,z=864,dx=82,dy=55,dz=64,type=!player,type=!armor_stand] run function pld:system/tp_and_kill_self
execute as @e[type=armor_stand,tag=instance2] run kill @s
#被击败喊话
tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate": "pl.info.instance2.end"}
scoreboard players set @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] gold_chest 1

schedule function pld:instances/instance2/tpout 5s