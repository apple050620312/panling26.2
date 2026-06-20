#效果
#execute as @s[scores={zf_lvl=1}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s luck 5 0 false
#
#execute as @s[scores={zf_lvl=2}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s luck 10 0 false
#
#execute as @s[scores={zf_lvl=3}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s luck 15 1 false
#
#execute as @s[scores={zf_lvl=4}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @s luck 20 1 false
#
#获取目标
#scoreboard players set @s zf_partice_water 1
#function pld:system/zf/shifang/zfzz_wj
#scoreboard players set @s zf_partice_water 0
#title @s[scores={mbxx=1}] actionbar {"translate": "pl.info.zfnotarget","color":"red","bold": true}
#playsound minecraft:block.fire.extinguish ambient @s[scores={mbxx=1}] ~ ~ ~ 1000
#效果
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targeta] luck 5 0 false
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetb] luck 10 0 false
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetc] luck 15 1 false
#execute store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @e[tag=targetd] luck 20 1 false
#
#
#tag @e[tag=targeta] remove targeta
#tag @e[tag=targetb] remove targetb
#tag @e[tag=targetc] remove targetc
#tag @e[tag=targetd] remove targetd

execute if score @s zf_lvl matches 1.. store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[limit=3,distance=..10] luck 20 0 false
effect give @p[limit=3,distance=..10] fire_resistance 20 0 false

#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:string{id:"panling:refined_water"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..10] {"text":"","extra":[{"text":"☯☯","color":"blue"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfwater2","color":"blue"}]}
tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..10] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯☯","color":"blue"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwater2","color":"blue"}]}
execute as @a[distance=..10] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯☯","color":"blue"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwater2","color":"blue"}]}
tag @s[tag=zf_owner] remove zf_owner 

particle portal ~ ~ ~1 1 1 1 10 100 force
particle witch ~ ~-0.2 ~ 1 0 1 0 100 force

#声音效果&进入冷却
function pld:system/zf/shifang/incool/water/incool


execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/refined/refined 

#设置冷却 
scoreboard players set @s zf_cool_water 160

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_water *= @s zf_cool_middle
scoreboard players operation @s zf_cool_water /= 100 int