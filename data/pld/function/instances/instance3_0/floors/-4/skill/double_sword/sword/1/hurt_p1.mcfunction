#承伤 三人即可
execute store result score #temp temp run execute if entity @a[distance=..2]

execute if score #temp temp matches 3.. run effect give @a[distance=..2] instant_damage 1 1 
execute unless score #temp temp matches 3.. run kill @a[distance=..2]
