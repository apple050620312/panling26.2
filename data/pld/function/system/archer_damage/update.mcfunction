#计算玩家应当获得的箭矢强度
scoreboard players set @s archer_damage_should 0

#检查力量效果等级 没有就0
execute if predicate pld:effect_check/strength run function pld:system/archer_damage/get_str
execute unless predicate pld:effect_check/strength run scoreboard players set @s archer_damage_effect 0
#检查虚弱效果等级 没有就0
execute if predicate pld:effect_check/weakness run function pld:system/archer_damage/get_weakness
execute unless predicate pld:effect_check/weakness run scoreboard players set @s archer_damage_effect_weak 0

#===========================基础箭矢强度 1位小数 add ===========================#

function #pld:archer_damage/base


#===========================箭矢强度 +x% 百分比  multiply_base===========================#
# *（1+x%） x等于所有此乘区百分比和

scoreboard players set @s archer_damage_l6 0

function #pld:archer_damage/multiply_base

scoreboard players operation @s archer_damage_middle = @s archer_damage_should
scoreboard players operation @s archer_damage_middle *= @s archer_damage_l6
scoreboard players operation @s archer_damage_middle /= 100 int
scoreboard players operation @s archer_damage_should += @s archer_damage_middle

#===========================最终箭矢强度 +x% 百分比 multiply===========================#

function #pld:archer_damage/multiply

#===========================最终箭矢强度 +x 1位小数 final_add===========================#

function #pld:archer_damage/final_add

#覆盖
scoreboard players operation @s archer_damage = @s archer_damage_should

#如果没有激活 清理数据
execute if entity @s[scores={WeaponSlot=1}] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=2}] unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=3}] unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=4}] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=5}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=6}] unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=7}] unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=8}] unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=9}] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 
execute if entity @s[scores={WeaponSlot=-1}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",components:{custom_data:{act:1}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",components:{custom_data:{act:1}}}]}] run function pld:system/archer_damage/clear_scores 



