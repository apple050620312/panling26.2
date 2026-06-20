#粒子效果

#tellraw
execute if score #system in3_boss3_skillc matches ..4 run tellraw @a[x=2834,y=31,z=-806,distance=..21] {"translate":"pl.info.instance3_0.boss_skill3"}
#实际效果
execute if score #system in3_boss3_skillc matches ..4 run scoreboard players add #system in3_boss3_skillc 1
execute if score #system in3_boss3_skillc matches 5 run tellraw @a[x=2834,y=31,z=-806,distance=..21] {"translate":"pl.info.instance3_0.boss_skill3b"}
execute if score #system in3_boss3_skillc matches 5 run effect give @s resistance 100 4
execute if score #system in3_boss3_skillc matches 4 run effect give @s resistance 100 3
execute if score #system in3_boss3_skillc matches 3 run effect give @s resistance 100 2
execute if score #system in3_boss3_skillc matches 2 run effect give @s resistance 100 1
execute if score #system in3_boss3_skillc matches 1 run effect give @s resistance 100 0



#cd：10s
scoreboard players set #system in3_boss3_skillt 200

