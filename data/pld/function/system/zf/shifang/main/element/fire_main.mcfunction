#效果s
execute as @s[scores={zf_lvl=1,zfsuccess=0}] at @s store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] fire_resistance 10
execute as @s[scores={zf_lvl=2,zfsuccess=0}] at @s store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] fire_resistance 10
execute as @s[scores={zf_lvl=3,zfsuccess=0}] at @s store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] fire_resistance 20
execute as @s[scores={zf_lvl=4..,zfsuccess=0}] at @s store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] fire_resistance 30
#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:blaze_rod{id:"panling:fire"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..5] {"text":"","extra":[{"text":"☯","color":"red"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zffire1","color":"red"}]}
tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..5] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯","color":"red"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zffire1","color":"red"}]}
execute as @a[distance=..5] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯","color":"red"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zffire1","color":"red"}]}
tag @s[tag=zf_owner] remove zf_owner 

#声音效果&进入冷却
execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/incool/fire/incool

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/element/element 

#设置冷却 
scoreboard players set @s zf_cool_fire 50

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_fire *= @s zf_cool_middle
scoreboard players operation @s zf_cool_fire /= 100 int