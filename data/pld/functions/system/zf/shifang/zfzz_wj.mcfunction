#跳出判据 离开范围外
#一级 10 二级 15 三级 20 四级 25
execute as @s[scores={zf_lvl=1}] unless entity @s[distance=..10] run scoreboard players set @s mbxx 1
execute as @s[scores={zf_lvl=2}] unless entity @s[distance=..15] run scoreboard players set @s mbxx 1
execute as @s[scores={zf_lvl=3}] unless entity @s[distance=..20] run scoreboard players set @s mbxx 1
execute as @s[scores={zf_lvl=4}] unless entity @s[distance=..25] run scoreboard players set @s mbxx 1
#标记路径上的怪物
execute if entity @s[scores={zf_lvl=1},distance=..10] if entity @p[tag=!sfwj,dx=1,dy=1,dz=1] run tag @p[tag=!sfwj,dx=1,dy=1,dz=1] add targeta
execute if entity @s[scores={zf_lvl=1},distance=..10] unless entity @p[tag=!sfwj,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_wj

execute if entity @s[scores={zf_lvl=2},distance=..15] if entity @p[tag=!sfwj,dx=1,dy=1,dz=1] run tag @p[tag=!sfwj,dx=1,dy=1,dz=1] add targetb
execute if entity @s[scores={zf_lvl=2},distance=..15] unless entity @p[tag=!sfwj,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_wj

execute if entity @s[scores={zf_lvl=3},distance=..20] if entity @p[tag=!sfwj,dx=1,dy=1,dz=1] run tag @p[tag=!sfwj,dx=1,dy=1,dz=1] add targetc
execute if entity @s[scores={zf_lvl=3},distance=..20] unless entity @p[tag=!sfwj,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_wj

execute if entity @s[scores={zf_lvl=4},distance=..25] if entity @p[tag=!sfwj,dx=1,dy=1,dz=1] run tag @p[tag=!sfwj,dx=1,dy=1,dz=1] add targetd
execute if entity @s[scores={zf_lvl=4},distance=..25] unless entity @p[tag=!sfwj,dx=1,dy=1,dz=1] positioned ^ ^ ^1 run function pld:system/zf/shifang/zfzz_wj

execute if entity @s[scores={zf_partice_wood=1}] run particle minecraft:happy_villager ~ ~1 ~ 0 0 0 0 1 force
execute if entity @s[scores={zf_partice_water=1}] run particle portal ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[scores={zf_partice_water=1}] run particle witch ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[scores={zf_partice_fire=1}] run particle minecraft:flame ~ ~1 ~ 0 0 0 0 1