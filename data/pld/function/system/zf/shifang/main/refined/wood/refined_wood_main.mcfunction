#效果
#execute as @s[scores={zf_lvl=1}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s instant_health 1 2 false
#execute as @s[scores={zf_lvl=1}] run effect give @s regeneration 5 1 false
#
#execute as @s[scores={zf_lvl=2}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s instant_health 1 3 false
#execute as @s[scores={zf_lvl=2}] run effect give @s regeneration 5 2 false
#
#execute as @s[scores={zf_lvl=3}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s instant_health 1 4 false
#execute as @s[scores={zf_lvl=3}] run effect give @s regeneration 5 3 false
#
#execute as @s[scores={zf_lvl=4}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s instant_health 1 5 false
#execute as @s[scores={zf_lvl=4}] run effect give @s regeneration 10 3 false
#
#获取目标
#scoreboard players set @s zf_partice_wood 1
#function pld:system/zf/shifang/zfzz_wj
#scoreboard players set @s zf_partice_wood 0
#title @s[scores={mbxx=1}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold": true}
#playsound minecraft:block.fire.extinguish ambient @s[scores={mbxx=1}] ~ ~ ~ 1000
#效果
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targeta] instant_health 1 2 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targeta] regeneration 5 1 true
#
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetb] instant_health 1 3 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targetb] regeneration 5 2 true
#
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetc] instant_health 1 4 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targetc] regeneration 5 3 true
#
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetd] instant_health 1 5 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targetd] regeneration 10 3 true
#
#tag @e[tag=targeta] remove targeta
#tag @e[tag=targetb] remove targetb
#tag @e[tag=targetc] remove targetc
#tag @e[tag=targetd] remove targetd


#如果附近有玩家，创建并链接苏生线
execute if entity @p[tag=!sfwj,distance=..8] run function pld:system/zf/shifang/main/refined/wood/line_main

#如果没有玩家，判定没有目标,显示失败

#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:bone{id:"panling:refined_wood"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯","color":"green"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfwood2","color":"green"}]}

tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯","color":"green"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwood2","color":"green"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯","color":"green"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwood2","color":"green"}]}
tag @s[tag=zf_owner] remove zf_owner 


#粒子效果
#particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 100 force

#声音效果&进入冷却
function pld:system/zf/shifang/incool/wood/incool
#粒子效果
#execute at @s[scores={zfsuccess=1}] run particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 40 force

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/refined/refined 

#设置冷却 
scoreboard players set @s zf_cool_wood 160

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_wood *= @s zf_cool_middle
scoreboard players operation @s zf_cool_wood /= 100 int

