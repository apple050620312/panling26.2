#标记怪物
#execute as @s[scores={zf_lvl=1}] run tag @e[tag=monster,limit=2,distance=..5,sort=nearest] add metaltag
#execute as @s[scores={zf_lvl=2}] run tag @e[tag=monster,limit=3,distance=..5,sort=nearest] add metaltag
#execute as @s[scores={zf_lvl=3..}] run tag @e[tag=monster,limit=4,distance=..10,sort=nearest] add metaltag
#
#效果
#execute as @s[scores={zf_lvl=1}] run effect give @e[limit=2,tag=metaltag,sort=nearest] slowness 5 0 false
#execute as @s[scores={zf_lvl=2}] run effect give @e[limit=3,tag=metaltag,sort=nearest] slowness 5 1 false
#execute as @s[scores={zf_lvl=3}] run effect give @e[limit=4,tag=metaltag,sort=nearest] slowness 5 2 false
#execute as @s[scores={zf_lvl=4}] run effect give @e[limit=4,tag=metaltag,sort=nearest] slowness 5 4 false
#
#function pld:system/zf/shifang/main/refined/metal/damage
#
#tag @e[tag=metaltag] remove metaltag
#
#获取目标
#scoreboard players set @s zf_partice_metal 1
#function pld:system/zf/shifang/zfzz_gw
#scoreboard players set @s zf_partice_metal 0
#title @s[scores={mbxx=1}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold": true}
#playsound minecraft:block.fire.extinguish ambient @s[scores={mbxx=1}] ~ ~ ~ 1000
#效果
#
#execute as @s[scores={zf_lvl=1,zfsuccess=0}] run function pld:system/zf/shifang/main/refined/metal/damagea
#execute as @s[scores={zf_lvl=2,zfsuccess=0}] run function pld:system/zf/shifang/main/refined/metal/damageb
#execute as @s[scores={zf_lvl=3,zfsuccess=0}] run function pld:system/zf/shifang/main/refined/metal/damagec
#execute as @s[scores={zf_lvl=4,zfsuccess=0}] run function pld:system/zf/shifang/main/refined/metal/damaged
#tag @e[tag=targeta] remove targeta
#tag @e[tag=targetb] remove targetb
#tag @e[tag=targetc] remove targetc
#tag @e[tag=targetd] remove targetd

#选择目标
function pld:system/zf/shifang/main/refined/metal/target/main

#对所有目标造成傷害
function pld:system/zf/shifang/main/refined/metal/damage/main

#移除目标
tag @e remove metaltag


scoreboard players set @s zfsuccess 1

#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:emerald{id:"panling:refined_metal"} 1
#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯","color":"yellow"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfmetal2","color":"yellow"}]}

tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯","color":"yellow"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfmetal2","color":"yellow"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯","color":"yellow"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfmetal2","color":"yellow"}]}
tag @s[tag=zf_owner] remove zf_owner 



#声音效果&进入冷却
function pld:system/zf/shifang/incool/metal/incool

#信息-没有目标
#title @s[scores={zfsuccess=0}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold":true}
#playsound minecraft:block.fire.extinguish ambient @s[scores={zfsuccess=0}] ~ ~ ~ 1000

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/refined/refined 

#设置冷却 
scoreboard players set @s zf_cool_metal 160

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_metal *= @s zf_cool_middle
scoreboard players operation @s zf_cool_metal /= 100 int

#粒子效果
execute store result score @s temp run function pld:system/zf/shifang/main/refined/metal/particle/main
