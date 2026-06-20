execute if block 175 46 162 hopper{Items:[{components:{"minecraft:custom_data":{id:"panling:lostbee"}}}]} unless score @s ex_sunday matches 1.. run scoreboard players set @s ex_sunday 1
execute if block 175 46 162 hopper{Items:[{components:{"minecraft:custom_data":{id:"panling:lostbee"}}}]} unless score @s ex_sunday matches 1.. run tellraw @s[scores={ex_sunday=1}] {"translate":"pl.info.sunday_bee"}
data merge block 175 46 162 {Items:[]}
