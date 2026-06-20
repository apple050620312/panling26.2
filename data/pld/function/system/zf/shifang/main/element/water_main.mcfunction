#效果s
execute as @s[scores={zf_lvl=1..2}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect clear @p[distance=..5,limit=5] poison
execute as @s[scores={zfsuccess=1}] run effect clear @p[distance=..5,limit=5] wither
execute as @s[scores={zf_lvl=1..2}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect clear @p[distance=..5,limit=5] wither
execute as @s[scores={zfsuccess=1}] run effect clear @p[distance=..5,limit=5] poison
execute as @s[scores={zf_lvl=3..4}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect clear @p[distance=..5,limit=5] wither
execute as @s[scores={zfsuccess=1}] run effect clear @p[distance=..5,limit=5] poison
execute as @s[scores={zf_lvl=3..4}] store success score @s[scores={zfsuccess=0}] zfsuccess run effect clear @p[distance=..5,limit=5] poison
execute as @s[scores={zfsuccess=1}] run effect clear @p[distance=..5,limit=5] wither
#扣除元素
function pld:system/zf/l6_check
clear @s[scores={zfsuccess=1,ldl6success=1}] minecraft:string{id:"panling:water"} 1

#信息
#execute at @s[scores={zfsuccess=1}] run tellraw @a[distance=..5] {"text":"","extra":[{"text":"☯","color":"blue"},{"selector":"@s","color":"yellow"},{"translate":"pl.info.zfwater1","color":"blue"}]}
tag @s[scores={zfsuccess=1}] add zf_owner 
execute if score @s zfsuccess matches 1 as @a[distance=..5] unless score @s info_pos_zf matches 1 run tellraw @s {"text":"","extra":[{"text":"☯","color":"blue"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwater1","color":"blue"}]}
execute if score @s zfsuccess matches 1 as @a[distance=..5] if score @s info_pos_zf matches 1 run title @s actionbar {"text":"","extra":[{"text":"☯","color":"blue"},{"selector":"@p[tag=zf_owner]","color":"yellow"},{"translate":"pl.info.zfwater1","color":"blue"}]}
tag @s[tag=zf_owner] remove zf_owner 


#声音效果&进入冷却
execute if entity @s[scores={zfsuccess=1}] run function pld:system/zf/shifang/incool/water/incool

execute if score @s[scores={zfsuccess=1}] zfsuccess matches 1 run function pld:system/zf/shifang/main/element/element 

#设置冷却 
scoreboard players set @s[scores={zfsuccess=1}] zf_cool_water 50

#应用冷却缩减
scoreboard players set @s[scores={zfsuccess=1}] zf_cool_middle 100
scoreboard players operation @s[scores={zfsuccess=1}] zf_cool_middle -= @s[scores={zfsuccess=1}] zf_cool_reduce
scoreboard players operation @s[scores={zfsuccess=1}] zf_cool_water *= @s[scores={zfsuccess=1}] zf_cool_middle
scoreboard players operation @s[scores={zfsuccess=1}] zf_cool_water /= 100 int
