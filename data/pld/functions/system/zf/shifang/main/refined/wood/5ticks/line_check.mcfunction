tag @s add input
#查找链接方，如果有链接方就不断线
scoreboard players set #temp temp 1
execute as @a[tag=!input,distance=..8] if score @s zf_wood_line_id = @p[tag=input] zf_wood_line_id run scoreboard players set #temp temp 0
execute unless entity @a[tag=!input,distance=..8] run scoreboard players set #temp temp 1 
execute if score #temp temp matches 1 run function pld:system/zf/shifang/main/refined/wood/5ticks/line_break

tag @s remove input