#基础1点攻击
scoreboard players set @s attack_damage1 10
scoreboard players set not_select_act_weapon int 0
execute if score @s job matches 0 unless entity @s[nbt={SelectedItem:{tag:{act:1}}}] run scoreboard players set not_select_act_weapon int 1

#检查力量效果等级 没有就0
execute if predicate pld:effect_check/strength run function pld:system/warrior_attack/attribute/get_str
execute unless predicate pld:effect_check/strength run scoreboard players set @s attack_damage_effect 0
#检查虚弱效果等级 没有就0
execute if predicate pld:effect_check/weakness run function pld:system/warrior_attack/attribute/get_weakness
execute unless predicate pld:effect_check/weakness run scoreboard players set @s attack_damage_effect_weak 0
#===========================基础近战攻击 1位小数 add ===========================#

function #pld:attack_damage/base


#===========================近战攻击 +x% 百分比  multiply_base===========================#
# *（1+x%） x等于所有此乘区百分比和

scoreboard players set #attack_damage_multiply_base int 0

function #pld:attack_damage/multiply_base

scoreboard players operation #attack_damage_middle float1 = @s attack_damage1
scoreboard players operation #attack_damage_middle float1 *= #attack_damage_multiply_base int
scoreboard players operation #attack_damage_middle float1 /= 100 int
scoreboard players operation @s attack_damage1 += #attack_damage_middle float1


#===========================最终近战攻击 +x% 百分比 multiply===========================#

function #pld:attack_damage/multiply

#===========================最终近战攻击 +x 1位小数 final_add===========================#

function #pld:attack_damage/final_add


#如果没有激活 清理数据
execute if score @s WeaponSlot matches 1 unless entity @s[nbt={Inventory:[{Slot:0b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 2 unless entity @s[nbt={Inventory:[{Slot:1b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 3 unless entity @s[nbt={Inventory:[{Slot:2b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 4 unless entity @s[nbt={Inventory:[{Slot:3b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 5 unless entity @s[nbt={Inventory:[{Slot:4b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 6 unless entity @s[nbt={Inventory:[{Slot:5b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 7 unless entity @s[nbt={Inventory:[{Slot:6b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 8 unless entity @s[nbt={Inventory:[{Slot:7b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches 9 unless entity @s[nbt={Inventory:[{Slot:8b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
execute if score @s WeaponSlot matches -1 unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{act:1}}]}] run scoreboard players set @s weapon_atk_pt_base1 0
