#实时统计数量
execute if entity @e[type=armor_stand,tag=instance4] if entity @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] run scoreboard players set #system instance4_bird 0
execute store result score #system instance4_bird run execute if entity @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=ghast]

#三鸟与大鱼死亡判定
execute if score #system instance4_bird matches 0 if score #system instance4_tag matches 0 if entity @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] unless entity @e[type=elder_guardian,x=912,y=57,z=1214,dx=62,dy=52,dz=70] if entity @e[type=armor_stand,tag=instance4] run function pld:instances/instance4/phase_success
#倒计时
execute if score #system instance4_tick matches 0.. if entity @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] run scoreboard players remove #system instance4_tick 1
execute if score #system instance4_tick matches 0 if score #system instance4_tag matches 0 if entity @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] if entity @e[type=armor_stand,tag=instance4] run function pld:instances/instance4/phase_check

#bossbar

execute store result bossbar pld:instance4_bosshp value run scoreboard players get #system instance4_bosshp
execute unless entity @e[limit=1,type=elder_guardian,x=912,y=57,z=1214,dx=62,dy=52,dz=70] run bossbar set pld:instance4_waterboss visible false
execute store result bossbar pld:instance4_waterboss value run data get entity @e[limit=1,type=elder_guardian,x=912,y=57,z=1214,dx=62,dy=52,dz=70] Health

#ban钓鱼竿
kill @e[type=minecraft:fishing_bobber,x=912,y=57,z=1214,dx=62,dy=52,dz=70]