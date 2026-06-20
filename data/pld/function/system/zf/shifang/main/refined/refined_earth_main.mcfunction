#标记玩家
#execute as @s[scores={zf_lvl=1}] run tag @p[limit=2,distance=..5] add earthtag
#execute as @s[scores={zf_lvl=2}] run tag @p[limit=3,distance=..10] add earthtag
#execute as @s[scores={zf_lvl=3}] run tag @p[limit=3,distance=..15] add earthtag
#execute as @s[scores={zf_lvl=4}] run tag @p[limit=4,distance=..20] add earthtag
#效果
#execute as @s[scores={zf_lvl=1}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[tag=earthtag] absorption 1800 1 false
#execute as @s[scores={zf_lvl=1}] run effect give @p[tag=earthtag] resistance 10 0
#
#execute as @s[scores={zf_lvl=2}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[tag=earthtag] absorption 1800 2 false
#execute as @s[scores={zf_lvl=2}] run effect give @p[tag=earthtag] resistance 10 0
#
#execute as @s[scores={zf_lvl=3}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[tag=earthtag] absorption 1800 2 false
#execute as @s[scores={zf_lvl=3}] run effect give @p[tag=earthtag] resistance 30 0
#
#execute as @s[scores={zf_lvl=4}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[tag=earthtag] absorption 1800 3 false
#execute as @s[scores={zf_lvl=4}] run effect give @p[tag=earthtag] resistance 30 1
#
#tag @a[tag=earthtag] remove earthtag
#
#获取目标
#scoreboard players set @s zf_partice_earth 1
#function pld:system/zf/shifang/zfzz_gw
#scoreboard players set @s zf_partice_earth 0
#title @s[scores={mbxx=1}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold": true}
#playsound minecraft:block.fire.extinguish ambient @s[scores={mbxx=1}] ~ ~ ~ 1000
#效果
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targeta] weakness 10 0 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targeta] slowness 10 1 true
#
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetb] weakness 20 0 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targetb] slowness 10 2 true
#
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetc] weakness 30 1 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targetc] slowness 10 3 true
#
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetd] weakness 30 1 true
#execute as @s[scores={zfsuccess=1}] run effect give @e[tag=targetd] slowness 10 4 true
#
#tag @e[tag=targeta] remove targeta
#tag @e[tag=targetb] remove targetb
#tag @e[tag=targetc] remove targetc
#tag @e[tag=targetd] remove targetd

#主函数
function pld:system/zf/shifang/main/refined/earth/main



#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:magma_cream[custom_data={id:"panling:refined_earth"}] 1
#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯","color":"gold"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfearth2","color":"gold"}]}

tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯","color":"gold"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfearth2","color":"gold"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯","color":"gold"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfearth2","color":"gold"}]}
tag @s[tag=zf_owner] remove zf_owner 

#粒子效果
#particle minecraft:item_slime ~ ~ ~ 1 0 1 0.2 100 force

#进入冷却
function pld:system/zf/shifang/incool/earth/incool

#粒子效果
#execute at @s[scores={zfsuccess=1}] run particle minecraft:item_slime ~ ~ ~ 1 0 1 0.2 1500 force

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/refined/refined 

#设置冷却 
scoreboard players set @s zf_cool_earth 160

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_earth *= @s zf_cool_middle
scoreboard players operation @s zf_cool_earth /= 100 int
