#效果
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @a[distance=..20] luck 60 1 false

execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @a[distance=..50] luck 120 2 false

#效果
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @e[distance=..20,tag=monster] poison 10 9 false
execute as @s[scores={zf_lvl=1..3}] store success score @s zfsuccess run effect give @e[distance=..20,tag=monster] wither 10 9 false

execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @e[distance=..50,tag=monster] poison 30 9 false
execute as @s[scores={zf_lvl=4}] store success score @s zfsuccess run effect give @e[distance=..50,tag=monster] wither 30 9 false



#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:wheat_seeds{id:"panling:again_refined_water"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯☯","color":"blue"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfwater3","color":"blue"}]}
tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯☯","color":"blue"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwater3","color":"blue"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯☯","color":"blue"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwater3","color":"blue"}]}
tag @s[tag=zf_owner] remove zf_owner 



#粒子效果
particle portal ~ ~ ~ 2 2 2 10 1000 force
particle witch ~ ~-0.2 ~ 2 0 2 0 1000 force

#声音效果&进入冷却
function pld:system/zf/shifang/incool/water/incool


execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/again_refined/again_refined 

#设置冷却 
scoreboard players set @s zf_cool_water 600

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_water *= @s zf_cool_middle
scoreboard players operation @s zf_cool_water /= 100 int