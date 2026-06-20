#效果
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @a[distance=..20] absorption 1800 3 false
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @a[distance=..20] resistance 120 0 false

execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @a[distance=..50] absorption 1800 4 false
execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @a[distance=..50] resistance 120 1 false

#效果
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @e[distance=..20,type=!player] weakness 120 9 false
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @e[distance=..20,type=!player] slowness 120 9 false

execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @e[distance=..50,type=!player] weakness 240 9 false
execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @e[distance=..50,type=!player] slowness 240 9 false


#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:pumpkin_seeds{id:"panling:again_refined_earth"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯☯","color":"gold"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfearth3","color":"gold"}]}

tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯☯","color":"gold"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfearth3","color":"gold"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯☯","color":"gold"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfearth3","color":"gold"}]}
tag @s[tag=zf_owner] remove zf_owner 


#进入冷却
function pld:system/zf/shifang/incool/earth/incool
#粒子效果
execute at @s[scores={zfsuccess=1}] run particle minecraft:item_slime ~ ~ ~ 1 0 1 0.2 1500 force
#粒子效果2
tag @s[scores={zfsuccess=1}] add particle_earth1
schedule function pld:system/zf/shifang/particle_earth1 0.8s
#粒子效果3
tag @s[scores={zfsuccess=1}] add particle_earth2
schedule function pld:system/zf/shifang/particle_earth2 1.6s

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/again_refined/again_refined 

#设置冷却 
scoreboard players set @s zf_cool_earth 600

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_earth *= @s zf_cool_middle
scoreboard players operation @s zf_cool_earth /= 100 int




