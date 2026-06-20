#跳出判据 离开范围外
#一级 10 二级 15 三级 20 四级 25
execute as @s[scores={zf_lvl=1}] unless entity @s[distance=..10] run scoreboard players set @s mbxx 1
execute as @s[scores={zf_lvl=2}] unless entity @s[distance=..15] run scoreboard players set @s mbxx 1
execute as @s[scores={zf_lvl=3}] unless entity @s[distance=..20] run scoreboard players set @s mbxx 1
execute as @s[scores={zf_lvl=4}] unless entity @s[distance=..25] run scoreboard players set @s mbxx 1
#标记路径上的怪物
execute if entity @s[scores={zf_lvl=1},distance=..10] if entity @e[tag=monster,dx=1,dy=1,dz=1] run tag @e[tag=monster,dx=1,dy=1,dz=1,sort=nearest] add targeta
execute if entity @s[scores={zf_lvl=1},distance=..10] unless entity @e[tag=monster,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_gw

execute if entity @s[scores={zf_lvl=2},distance=..15] if entity @e[tag=monster,dx=1,dy=1,dz=1] run tag @e[tag=monster,dx=1,dy=1,dz=1,sort=nearest] add targetb
execute if entity @s[scores={zf_lvl=2},distance=..15] unless entity @e[tag=monster,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_gw

execute if entity @s[scores={zf_lvl=3},distance=..20] if entity @e[tag=monster,dx=1,dy=1,dz=1] run tag @e[tag=monster,dx=1,dy=1,dz=1,sort=nearest] add targetc
execute if entity @s[scores={zf_lvl=3},distance=..20] unless entity @e[tag=monster,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_gw

execute if entity @s[scores={zf_lvl=4},distance=..25] if entity @e[tag=monster,dx=1,dy=1,dz=1] run tag @e[tag=monster,dx=1,dy=1,dz=1,sort=nearest] add targetd
execute if entity @s[scores={zf_lvl=4},distance=..25] unless entity @e[tag=monster,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_gw

#金元素粒子效果
execute if entity @s[scores={zf_partice_metal=1}] run particle cloud ~ ~1 ~ 0 0 0 0 1 force

#土元素粒子效果
execute if entity @s[scores={zf_partice_earth=1}] run particle minecraft:item_slime ~ ~1 ~ 0 0 0 0 1 force

