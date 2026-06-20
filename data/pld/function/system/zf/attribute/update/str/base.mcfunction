#炉子提供阵法强度
#scoreboard players add @s[scores={zf_hold_ldl=1}] zf_str 10
#scoreboard players add @s[scores={zf_hold_ldl=2}] zf_str 15
#scoreboard players add @s[scores={zf_hold_ldl=3}] zf_str 20
#scoreboard players add @s[scores={zf_hold_ldl=-1}] zf_str 10
#scoreboard players add @s[scores={zf_hold_ldl=-2}] zf_str 15
#scoreboard players add @s[scores={zf_hold_ldl=-3}] zf_str 20
#
#scoreboard players add @s[scores={zf_hold_ldl=4,weapon6_awake=0}] zf_str 10
#scoreboard players add @s[scores={zf_hold_ldl=4,weapon6_awake=1}] zf_str 15
#scoreboard players add @s[scores={zf_hold_ldl=4,weapon6_awake=2}] zf_str 20
#scoreboard players add @s[scores={zf_hold_ldl=4,weapon6_awake=3}] zf_str 25
#
#scoreboard players add @s[scores={zf_hold_ldl=-4,weapon6_awake=0}] zf_str 10
#scoreboard players add @s[scores={zf_hold_ldl=-4,weapon6_awake=1}] zf_str 15
#scoreboard players add @s[scores={zf_hold_ldl=-4,weapon6_awake=2}] zf_str 20
#scoreboard players add @s[scores={zf_hold_ldl=-4,weapon6_awake=3}] zf_str 25


#羽毛提供阵法强度
scoreboard players operation @s zf_str += @s feather_zf_str
#食物提供阵法强度
scoreboard players operation @s zf_str += @s food_zf_str
#杀人魔支线提供阵法强度
scoreboard players operation @s zf_str += @s murder_zf_str
#战神支线提供阵法强度
scoreboard players operation @s[scores={race=3}] zf_str += @s exzhan_zf_str

#附灵提供效果
execute if entity @s[scores={zf_hold_ldl=1..},nbt={Inventory:[{Slot:-106b,components:{custom_data:{enchant_id:5,enchant_lvl:1}}}]}] run scoreboard players add @s zf_str 1
execute if entity @s[scores={zf_hold_ldl=1..},nbt={Inventory:[{Slot:-106b,components:{custom_data:{enchant_id:5,enchant_lvl:2}}}]}] run scoreboard players add @s zf_str 2
execute if entity @s[scores={zf_hold_ldl=1..},nbt={Inventory:[{Slot:-106b,components:{custom_data:{enchant_id:5,enchant_lvl:3}}}]}] run scoreboard players add @s zf_str 3

execute if entity @s[scores={zf_hold_ldl=..-1},nbt={SelectedItem:{components:{custom_data:{enchant_id:5,enchant_lvl:1}}}}] run scoreboard players add @s zf_str 1
execute if entity @s[scores={zf_hold_ldl=..-1},nbt={SelectedItem:{components:{custom_data:{enchant_id:5,enchant_lvl:2}}}}] run scoreboard players add @s zf_str 2
execute if entity @s[scores={zf_hold_ldl=..-1},nbt={SelectedItem:{components:{custom_data:{enchant_id:5,enchant_lvl:3}}}}] run scoreboard players add @s zf_str 3



#乘10 变成一位小数
scoreboard players operation @s zf_str *= 10 int


#炉子提供阵法强度
scoreboard players operation @s zf_str += @s equipment_atk_pt_base1

#防具提供效果
scoreboard players operation @s zf_str += @s head_atk_pt_base1
scoreboard players operation @s zf_str += @s chest_atk_pt_base1
scoreboard players operation @s zf_str += @s legs_atk_pt_base1
scoreboard players operation @s zf_str += @s feet_atk_pt_base1
#execute if entity @s[nbt={Inventory:[{Slot:103b,components:{custom_data:{id:"panling:helmet22"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:103b,components:{custom_data:{id:"panling:helmet32"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:103b,components:{custom_data:{id:"panling:helmet42"}}}]}] run scoreboard players add @s zf_str 2
#execute if entity @s[nbt={Inventory:[{Slot:103b,components:{custom_data:{id:"panling:helmet52"}}}]}] run scoreboard players add @s zf_str 2
#
#execute if entity @s[nbt={Inventory:[{Slot:102b,components:{custom_data:{id:"panling:chestplate22"}}}]}] run scoreboard players add @s zf_str 0
#execute if entity @s[nbt={Inventory:[{Slot:102b,components:{custom_data:{id:"panling:chestplate32"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:102b,components:{custom_data:{id:"panling:chestplate42"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:102b,components:{custom_data:{id:"panling:chestplate52"}}}]}] run scoreboard players add @s zf_str 2
#
#execute if entity @s[nbt={Inventory:[{Slot:101b,components:{custom_data:{id:"panling:leggings22"}}}]}] run scoreboard players add @s zf_str 0
#execute if entity @s[nbt={Inventory:[{Slot:101b,components:{custom_data:{id:"panling:leggings32"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:101b,components:{custom_data:{id:"panling:leggings42"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:101b,components:{custom_data:{id:"panling:leggings52"}}}]}] run scoreboard players add @s zf_str 2
#
#execute if entity @s[nbt={Inventory:[{Slot:100b,components:{custom_data:{id:"panling:boots22"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:100b,components:{custom_data:{id:"panling:boots32"}}}]}] run scoreboard players add @s zf_str 1
#execute if entity @s[nbt={Inventory:[{Slot:100b,components:{custom_data:{id:"panling:boots42"}}}]}] run scoreboard players add @s zf_str 2
#execute if entity @s[nbt={Inventory:[{Slot:100b,components:{custom_data:{id:"panling:boots52"}}}]}] run scoreboard players add @s zf_str 2
#execute if entity @s[nbt={Inventory:[{Slot:100b,components:{custom_data:{id:"panling:boots4e1"}}}]}] run scoreboard players add @s zf_str 6
#execute if entity @s[nbt={Inventory:[{Slot:100b,components:{custom_data:{id:"panling:boots5e1"}}}]}] run scoreboard players add @s zf_str 8



#时装附灵的阵法强度
scoreboard players operation @s zf_str += @s hp_damage

#神器防具提供基础阵法强度
#execute if score @s armor_rare_head matches 61..63 if score @s armor6_awake_head matches 0 run scoreboard players add @s zf_str 10
#execute if score @s armor_rare_head matches 61..63 if score @s armor6_awake_head matches 1 run scoreboard players add @s zf_str 15
#execute if score @s armor_rare_head matches 61..63 if score @s armor6_awake_head matches 2..3 run scoreboard players add @s zf_str 20
#execute if score @s armor_rare_chest matches 61..63 if score @s armor6_awake_chest matches 0 run scoreboard players add @s zf_str 10
#execute if score @s armor_rare_chest matches 61..63 if score @s armor6_awake_chest matches 1 run scoreboard players add @s zf_str 15
#execute if score @s armor_rare_chest matches 61..63 if score @s armor6_awake_chest matches 2..3 run scoreboard players add @s zf_str 20
#execute if score @s armor_rare_legs matches 61..63 if score @s armor6_awake_legs matches 0 run scoreboard players add @s zf_str 10
#execute if score @s armor_rare_legs matches 61..63 if score @s armor6_awake_legs matches 1 run scoreboard players add @s zf_str 15
#execute if score @s armor_rare_legs matches 61..63 if score @s armor6_awake_legs matches 2..3 run scoreboard players add @s zf_str 20
#execute if score @s armor_rare_feet matches 61..63 if score @s armor6_awake_feet matches 0 run scoreboard players add @s zf_str 10
#execute if score @s armor_rare_feet matches 61..63 if score @s armor6_awake_feet matches 1 run scoreboard players add @s zf_str 15
#execute if score @s armor_rare_feet matches 61..63 if score @s armor6_awake_feet matches 2..3 run scoreboard players add @s zf_str 20

