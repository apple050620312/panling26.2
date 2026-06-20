function pld:instances/instance4/phase_time_re

tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate": "pl.info.instance4.fail2"}
tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate": "pl.info.instance4.fail2b"}
execute unless score #system instance4_bosshp matches 7 run scoreboard players add #system instance4_bosshp 1
#恶魂回血
effect give @e[type=minecraft:ghast,x=912,y=57,z=1214,dx=62,dy=52,dz=70] minecraft:instant_health 1 10


#刷新怪物
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=skeleton] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=wither_skeleton] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=drowned] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=guardian] 944 -1000 1256
execute if score #system instance4_bosshp matches 7 run function pld:instances/instance4/monster_summon/7
execute if score #system instance4_bosshp matches 1..6 run function pld:instances/instance4/monster_summon/6

#水位变动
function pld:instances/instance4/water_line
