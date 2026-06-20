execute as @e[tag=instance5_skill,limit=1] run loot replace entity @s armor.head loot pld:instance5/skill
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:yellow_wool"}]}] run function pld:instances/instance5/light/start_up
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_wool"}]}] run function pld:instances/instance5/sky/start_up
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:magenta_wool"}]}] run function pld:instances/instance5/swamp/start_up
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:light_blue_wool"}]}] run function pld:instances/instance5/water/start_up
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:black_wool"}]}] run function pld:instances/instance5/wind/start_up
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:light_gray_wool"}]}] run function pld:instances/instance5/earth/start_up
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:pink_wool"}]}] run function pld:instances/instance5/fire/start_up
execute as @e[tag=instance5_skill,nbt={ArmorItems:[{},{},{},{id:"minecraft:brown_wool"}]}] run function pld:instances/instance5/mountain/start_up
