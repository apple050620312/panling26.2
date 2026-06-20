#hp-1
scoreboard players set #system instance4_tag 1
function pld:instances/instance4/phase_time_re
scoreboard players remove #system instance4_bosshp 1
tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate": "pl.info.instance4.success"}

execute if score #system instance4_bosshp matches 0 run function pld:instances/instance4/end
#流泪效果
fill 946 89 1237 946 88 1237 minecraft:water
fill 942 89 1237 942 88 1237 minecraft:water
schedule clear pld:instances/instance4/tear_clear
schedule function pld:instances/instance4/tear_clear 2s
#重开阶段
schedule clear pld:instances/instance4/phase
execute if score #system instance4_bosshp matches 1.. run schedule function pld:instances/instance4/phase 1s

