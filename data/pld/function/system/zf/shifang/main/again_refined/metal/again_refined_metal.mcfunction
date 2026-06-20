#标记
execute as @s[scores={zf_hold_ldl=3}] run tag @e[tag=monster,distance=..20] add metaltag
execute as @s[scores={zf_hold_ldl=4}] run tag @e[tag=monster,distance=..50] add metaltag
execute as @s[scores={zf_hold_ldl=-3}] run tag @e[tag=monster,distance=..20] add metaltag
execute as @s[scores={zf_hold_ldl=-4}] run tag @e[tag=monster,distance=..50] add metaltag
#效果

function pld:system/zf/shifang/main/again_refined/metal/again_refined_metal_damage

#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:flint[custom_data={id:"panling:again_refined_metal"}] 1

#重置标记
tag @e[tag=metaltag] remove metaltag

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯☯","color":"yellow"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfmetal3","color":"yellow"}]}

tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯☯","color":"yellow"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfmetal3","color":"yellow"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯☯","color":"yellow"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfmetal3","color":"yellow"}]}
tag @s[tag=zf_owner] remove zf_owner 



#粒子效果
particle cloud ~ ~2 ~ 2 0 2 1 500 force

#声音效果&进入冷却
function pld:system/zf/shifang/incool/metal/incool

#信息-没有目标
title @s[scores={zfsuccess=0}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold":true}
playsound minecraft:block.fire.extinguish ambient @s[scores={zfsuccess=0}] ~ ~ ~ 1000

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/again_refined/again_refined

#设置冷却 
scoreboard players set @s zf_cool_metal 600

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_metal *= @s zf_cool_middle
scoreboard players operation @s zf_cool_metal /= 100 int



