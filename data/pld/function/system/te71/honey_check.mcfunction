execute if block 161 11 164 hopper{Items:[{components:{"minecraft:custom_data":{id:"panling:honey"}}}]} run scoreboard players set @s ex_sunday 2
execute if block 161 11 164 hopper{Items:[{components:{"minecraft:custom_data":{id:"panling:honey"}}}]} at @s as @s run tp @s[scores={ex_sunday=2}] ~ ~ ~-25 -180 ~
data merge block 161 11 164 {Items:}