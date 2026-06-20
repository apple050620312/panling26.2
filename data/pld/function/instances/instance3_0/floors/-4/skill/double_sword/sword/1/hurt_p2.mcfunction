#承伤 三人染黑即可 不承伤就团灭
execute store result score #temp temp run execute if entity @a[distance=..2,tag=drawn_black]

execute if score #temp temp matches 3.. run effect give @a[distance=..2] instant_damage 1 1 
execute unless score #temp temp matches 3.. run kill @a[scores={instance3_floor=-4},x=2834,y=31,z=-849,distance=..21]
