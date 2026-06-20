#效果
#execute as @s[scores={zf_lvl=1}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s fire_resistance 30 0 false
#
#execute as @s[scores={zf_lvl=2}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s fire_resistance 60 0 false
#
#execute as @s[scores={zf_lvl=3}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s fire_resistance 90 1 false
#
#execute as @s[scores={zf_lvl=4}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s fire_resistance 120 1 false
#
#获取目标
#scoreboard players set @s zf_partice_fire 1
#function pld:system/zf/shifang/zfzz_wj
#scoreboard players set @s zf_partice_fire 0
#
#title @s[scores={mbxx=1}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold": true}
#playsound minecraft:block.fire.extinguish ambient @s[scores={mbxx=1}] ~ ~ ~ 1000
#效果
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targeta] fire_resistance 30 0 false
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetb] fire_resistance 60 0 false
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetc] fire_resistance 90 0 false
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetd] fire_resistance 120 0 false
#
#tag @e[tag=targeta] remove targeta
#tag @e[tag=targetb] remove targetb
#tag @e[tag=targetc] remove targetc
#tag @e[tag=targetd] remove targetd



#主函数
function pld:system/zf/shifang/main/refined/fire/main

#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:blaze_rod[custom_data={id:"panling:refined_fire"}] 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯","color":"red"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zffire2","color":"red"}]}
tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯","color":"red"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zffire2","color":"red"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯","color":"red"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zffire2","color":"red"}]}
tag @s[tag=zf_owner] remove zf_owner 

#粒子效果
particle minecraft:flame ~ ~ ~ 1 1 1 0 100

#声音效果&进入冷却
function pld:system/zf/shifang/incool/fire/incool
#粒子效果
execute at @s[scores={zfsuccess=1}] run particle minecraft:flame ~ ~ ~ 1 0 1 0.05 300 force


execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/refined/refined 

#设置冷却 
scoreboard players set @s zf_cool_fire 160

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_fire *= @s zf_cool_middle
scoreboard players operation @s zf_cool_fire /= 100 int