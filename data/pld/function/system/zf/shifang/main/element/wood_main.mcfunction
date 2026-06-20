#效果
execute as @s[scores={zf_lvl=1}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] instant_health 1 1 false
execute as @s[scores={zfsuccess=1,zf_lvl=1}] run effect give @p[distance=..5,limit=5] regeneration 5 0 true

execute as @s[scores={zf_lvl=2}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] instant_health 1 1 false
execute as @s[scores={zfsuccess=1,zf_lvl=2}] run effect give @p[distance=..5,limit=5] regeneration 10 0 true

execute as @s[scores={zf_lvl=3}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] instant_health 1 1 false
execute as @s[scores={zfsuccess=1,zf_lvl=3}] run effect give @p[distance=..5,limit=5] regeneration 10 1 true

execute as @s[scores={zf_lvl=4}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect give @p[distance=..5,limit=5] instant_health 1 1 false
execute as @s[scores={zfsuccess=1,zf_lvl=4}] run effect give @p[distance=..5,limit=5] regeneration 15 1 true

#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:bone{id:"panling:wood"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..5] {"text":"","extra":[{"text":"☯","color":"green"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfwood1","color":"green"}]}
tag @s[scores={zfsuccess=1}] add zf_owner 
execute as @a[distance=..5] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯","color":"green"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwood1","color":"green"}]}
execute as @a[distance=..5] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯","color":"green"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwood1","color":"green"}]}
tag @s[tag=zf_owner] remove zf_owner 

#声音效果&进入冷却
execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/incool/wood/incool

execute if score @s zfsuccess matches 1 run function pld:system/zf/shifang/main/element/element 

#设置冷却 
scoreboard players set @s zf_cool_wood 50

#应用冷却缩减
scoreboard players set @s zf_cool_middle 100
scoreboard players operation @s zf_cool_middle -= @s zf_cool_reduce
scoreboard players operation @s zf_cool_wood *= @s zf_cool_middle
scoreboard players operation @s zf_cool_wood /= 100 int
