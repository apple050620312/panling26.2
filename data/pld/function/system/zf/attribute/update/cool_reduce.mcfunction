#===========================累计冷却缩减 百分比缩减===========================#

#炉子提供效果
#scoreboard players add @s[scores={zf_hold_ldl=1}] zf_cool_reduce 0
#scoreboard players add @s[scores={zf_hold_ldl=2}] zf_cool_reduce 5
#scoreboard players add @s[scores={zf_hold_ldl=3}] zf_cool_reduce 10
#scoreboard players add @s[scores={zf_hold_ldl=-1}] zf_cool_reduce 0
#scoreboard players add @s[scores={zf_hold_ldl=-2}] zf_cool_reduce 5
#scoreboard players add @s[scores={zf_hold_ldl=-3}] zf_cool_reduce 10
#
#scoreboard players add @s[scores={zf_hold_ldl=-4,weapon6_awake=1}] zf_cool_reduce 5
#scoreboard players add @s[scores={zf_hold_ldl=-4,weapon6_awake=2..3}] zf_cool_reduce 10
#scoreboard players add @s[scores={zf_hold_ldl=4,weapon6_awake=1}] zf_cool_reduce 5
#scoreboard players add @s[scores={zf_hold_ldl=4,weapon6_awake=2..3}] zf_cool_reduce 10

scoreboard players operation @s zf_cool_reduce += @s equipment_speed_pc_multiply_base

#防具提供效果
scoreboard players operation @s zf_cool_reduce += @s head_speed_pc_multiply_base
scoreboard players operation @s zf_cool_reduce += @s chest_speed_pc_multiply_base
scoreboard players operation @s zf_cool_reduce += @s legs_speed_pc_multiply_base
scoreboard players operation @s zf_cool_reduce += @s feet_speed_pc_multiply_base

#套装效果提供效果
execute if entity @s[tag=set_bonus_0_4_2] run scoreboard players operation @s zf_cool_reduce += #system armor_set_bonus_0_4_2



#execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{id:"panling:helmet22"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{id:"panling:helmet32"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{id:"panling:helmet42"}}]}] run scoreboard players add @s zf_cool_reduce 5
#execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{id:"panling:helmet52"}}]}] run scoreboard players add @s zf_cool_reduce 5
#
#execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{id:"panling:chestplate22"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{id:"panling:chestplate32"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{id:"panling:chestplate42"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{id:"panling:chestplate52"}}]}] run scoreboard players add @s zf_cool_reduce 5
#
#execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{id:"panling:leggings22"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{id:"panling:leggings32"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{id:"panling:leggings42"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{id:"panling:leggings52"}}]}] run scoreboard players add @s zf_cool_reduce 5
#
#execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{id:"panling:boots22"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{id:"panling:boots32"}}]}] run scoreboard players add @s zf_cool_reduce 0
#execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{id:"panling:boots42"}}]}] run scoreboard players add @s zf_cool_reduce 5
#execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{id:"panling:boots52"}}]}] run scoreboard players add @s zf_cool_reduce 5
#execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{id:"panling:boots4e1"}}]}] run scoreboard players add @s zf_cool_reduce 10
#execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{id:"panling:boots5e1"}}]}] run scoreboard players add @s zf_cool_reduce 15
#
#execute if score @s armor_rare_head matches 61 if score @s armor6_awake_head matches 1 run scoreboard players add @s zf_cool_reduce 10
#execute if score @s armor_rare_head matches 61 if score @s armor6_awake_head matches 2 run scoreboard players add @s zf_cool_reduce 15
#execute if score @s armor_rare_head matches 61 if score @s armor6_awake_head matches 3 run scoreboard players add @s zf_cool_reduce 20
#
#execute if score @s armor_rare_chest matches 63 if score @s armor6_awake_chest matches 1 run scoreboard players add @s zf_cool_reduce 10
#execute if score @s armor_rare_chest matches 63 if score @s armor6_awake_chest matches 2 run scoreboard players add @s zf_cool_reduce 15
#execute if score @s armor_rare_chest matches 63 if score @s armor6_awake_chest matches 3 run scoreboard players add @s zf_cool_reduce 20
#
#execute if score @s armor_rare_legs matches 63 if score @s armor6_awake_legs matches 1 run scoreboard players add @s zf_cool_reduce 10
#execute if score @s armor_rare_legs matches 63 if score @s armor6_awake_legs matches 2 run scoreboard players add @s zf_cool_reduce 15
#execute if score @s armor_rare_legs matches 63 if score @s armor6_awake_legs matches 3 run scoreboard players add @s zf_cool_reduce 20
#
#execute if score @s armor_rare_feet matches 62 if score @s armor6_awake_feet matches 1 run scoreboard players add @s zf_cool_reduce 10
#execute if score @s armor_rare_feet matches 62 if score @s armor6_awake_feet matches 2 run scoreboard players add @s zf_cool_reduce 15
#execute if score @s armor_rare_feet matches 62 if score @s armor6_awake_feet matches 3 run scoreboard players add @s zf_cool_reduce 20
