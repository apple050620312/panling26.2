#效果
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @a[distance=..20] saturation 1 0 false
execute as @s[scores={zf_lvl=1..3}] run effect give @a[distance=..20] health_boost 60 2 false

execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @a[distance=..50] saturation 2 0 false
execute as @s[scores={zf_lvl=4}] run effect give @a[distance=..50] health_boost 120 3 false

#效果
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @a[distance=..20] instant_health 1 5 false
execute as @s[scores={zf_lvl=1..3}] run effect give @a[distance=..20] regeneration 5 2 false
execute as @s[scores={zf_lvl=1..}] run effect clear @a[distance=..20] poison
execute as @s[scores={zf_lvl=1..}] run effect clear @a[distance=..20] wither
execute as @s[scores={zf_lvl=1..}] run effect clear @a[distance=..20] weakness
execute as @s[scores={zf_lvl=1..}] run effect clear @a[distance=..20] hunger
execute as @s[scores={zf_lvl=1..}] run effect clear @a[distance=..20] nausea
execute as @s[scores={zf_lvl=1..}] run effect clear @a[distance=..20] slowness

execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @a[distance=..50] instant_health 1 6 false
execute as @s[scores={zf_lvl=4}] run effect give @a[distance=..50] regeneration 5 3 false


#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:melon_seeds[custom_data={id:"panling:again_refined_wood"}] 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯☯","color":"green"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfwood3","color":"green"}]}

tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯☯","color":"green"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwood3","color":"green"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯☯","color":"green"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwood3","color":"green"}]}
tag @s[tag=zf_owner] remove zf_owner 




#声音效果&进入冷却
function pld:system/zf/shifang/incool/wood/incool
#粒子效果
execute at @s[scores={zfsuccess=1}] run particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 40 force
#粒子效果2
tag @s[scores={zfsuccess=1}] add particle_wood1
schedule function pld:system/zf/shifang/particle_wood1 0.8s
#粒子效果3
tag @s[scores={zfsuccess=1}] add particle_wood2
schedule function pld:system/zf/shifang/particle_wood2 1.6s

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/again_refined/again_refined 

#设置冷却 
scoreboard players set @s zf_cool_wood 600

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_wood *= @s zf_cool_middle
scoreboard players operation @s zf_cool_wood /= 100 int