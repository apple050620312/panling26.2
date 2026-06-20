function pld:system/feather/passive
execute as @s[scores={feather_mainland=1}] run function pld:system/feather/main
#移除大陆速度屬性
execute as @s[scores={feather_mainland=-1}] run attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_8_8_8_8_8
execute as @s unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4}}}]}] run attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_8_8_8_8_9
execute as @s if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4}}}]}] run attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_8_8_8_8_8
execute as @s unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather"}}}]}] run attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_8_8_8_8_8
