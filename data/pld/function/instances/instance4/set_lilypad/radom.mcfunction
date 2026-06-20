loot replace entity @e[limit=1,tag=instance4] armor.head loot pld:instance4/lilypad
execute if entity @e[limit=1,tag=instance4,nbt={ArmorItems:[{},{},{},{id:"minecraft:white_wool"}]}] run function pld:instances/instance4/set_lilypad/hp_check1
execute if entity @e[limit=1,tag=instance4,nbt={ArmorItems:[{},{},{},{id:"minecraft:black_wool"}]}] run function pld:instances/instance4/set_lilypad/hp_check2
