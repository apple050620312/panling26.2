#标记怪物
execute as @s[scores={zf_hold_ldl=1}] run tag @e[tag=monster,limit=1,distance=..5,sort=nearest] add metaltag
execute as @s[scores={zf_hold_ldl=2}] run tag @e[tag=monster,limit=1,distance=..10,sort=nearest] add metaltag
execute as @s[scores={zf_hold_ldl=3}] run tag @e[tag=monster,limit=1,distance=..10,sort=nearest] add metaltag
execute as @s[scores={zf_hold_ldl=4}] run tag @e[tag=monster,limit=1,distance=..10,sort=nearest] add metaltag

execute as @s[scores={zf_hold_ldl=-1}] run tag @e[tag=monster,limit=1,distance=..5,sort=nearest] add metaltag
execute as @s[scores={zf_hold_ldl=-2}] run tag @e[tag=monster,limit=1,distance=..10,sort=nearest] add metaltag
execute as @s[scores={zf_hold_ldl=-3}] run tag @e[tag=monster,limit=1,distance=..10,sort=nearest] add metaltag
execute as @s[scores={zf_hold_ldl=-4}] run tag @e[tag=monster,limit=1,distance=..10,sort=nearest] add metaltag

#效果
#execute as @s[scores={zf_hold_ldl=1..}] at @s store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=undead,tag=metaltag] instant_health 1 3 false
#execute as @s[scores={zf_hold_ldl=1..}] at @s store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=not_undead,tag=metaltag] instant_damage 1 2 false
#execute as @s[scores={zf_hold_ldl=1..,zfsuccess=1}] at @s run effect give @e[tag=not_undead,tag=metaltag] wither 4 2 false
function pld:system/zf/shifang/main/element/metal/damage

#重置标记
tag @e[tag=metaltag] remove metaltag

#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:emerald{id:"panling:metal"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯","color":"yellow"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfmetal1","color":"yellow"}]}
#execute at @s[scores={zfsuccess=1}] run tellraw @s {"text":"","extra":[{"text":"☯","color":"yellow"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfmetal1","color":"yellow"}]}

execute unless score @s info_pos_zf matches 1 run tellraw @s[scores={zfsuccess=1}] {"text":"","extra":[{"text":"☯","color":"yellow"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfmetal1","color":"yellow"}]}
execute if score @s info_pos_zf matches 1 run title @s[scores={zfsuccess=1}] actionbar {"text":"","extra":[{"text":"☯","color":"yellow"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfmetal1","color":"yellow"}]}



#声音效果&进入冷却
execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/incool/metal/incool

#信息-没有目标
#title @s[scores={zfsuccess=0}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold":true}
#playsound minecraft:block.fire.extinguish ambient @s[scores={zfsuccess=0}] ~ ~ ~ 1000

#通用结算
execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/element/element

#设置冷却 
scoreboard players set @s zf_cool_metal 50

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_metal *= @s zf_cool_middle
scoreboard players operation @s zf_cool_metal /= 100 int



