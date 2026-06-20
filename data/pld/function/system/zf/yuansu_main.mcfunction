#主手元素文件
#检测金元素
#execute if predicate pld:mainhand/metal run function pld:system/zf/shifang/incool/metal/1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:metal"}}}}] run function pld:system/zf/shifang/incool/metal/1

#检测精炼金元素
#execute if predicate pld:mainhand/refined_metal run function pld:system/zf/shifang/incool/metal/2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:refined_metal"}}}}] run function pld:system/zf/shifang/incool/metal/2
#检测浓缩金元素
#execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if predicate pld:mainhand/again_refined_metal run function pld:system/zf/shifang/incool/metal/3
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:again_refined_metal"}}}}] run function pld:system/zf/shifang/incool/metal/3


#检测木元素
#execute if predicate pld:mainhand/wood run function pld:system/zf/shifang/incool/wood/1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:wood"}}}}] run function pld:system/zf/shifang/incool/wood/1
#检测精炼木元素
#execute if predicate pld:mainhand/refined_wood run function pld:system/zf/shifang/incool/wood/2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:refined_wood"}}}}] run function pld:system/zf/shifang/incool/wood/2
#检测浓缩木元素
#execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if predicate pld:mainhand/again_refined_wood run function pld:system/zf/shifang/incool/wood/3
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:again_refined_wood"}}}}] at @s run function pld:system/zf/shifang/incool/wood/3

#检测水元素
#execute if predicate pld:mainhand/water run function pld:system/zf/shifang/incool/water/1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:water"}}}}] at @s run function pld:system/zf/shifang/incool/water/1
#检测精炼水元素
#execute if predicate pld:mainhand/refined_water run function pld:system/zf/shifang/incool/water/2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:refined_water"}}}}] at @s run function pld:system/zf/shifang/incool/water/2
#检测浓缩水元素
#execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if predicate pld:mainhand/again_refined_water run function pld:system/zf/shifang/incool/water/3
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:again_refined_water"}}}}] at @s run function pld:system/zf/shifang/incool/water/3

#检测火元素
#execute if predicate pld:mainhand/fire run function pld:system/zf/shifang/incool/fire/1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:fire"}}}}] at @s run function pld:system/zf/shifang/incool/fire/1
#检测精炼火元素
#execute if predicate pld:mainhand/refined_fire run function pld:system/zf/shifang/incool/fire/2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:refined_fire"}}}}] at @s run function pld:system/zf/shifang/incool/fire/2
#检测浓缩火元素
#execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if predicate pld:mainhand/again_refined_fire run function pld:system/zf/shifang/incool/fire/3
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:again_refined_fire"}}}}] at @s run function pld:system/zf/shifang/incool/fire/3


#检测土元素
#execute if predicate pld:mainhand/earth run function pld:system/zf/shifang/incool/earth/1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:earth"}}}}] at @s run function pld:system/zf/shifang/incool/earth/1
#检测精炼土元素
#execute if predicate pld:mainhand/refined_earth run function pld:system/zf/shifang/incool/earth/2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:refined_earth"}}}}] at @s run function pld:system/zf/shifang/incool/earth/2
#检测浓缩土元素
#execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if predicate pld:mainhand/again_refined_earth run function pld:system/zf/shifang/incool/earth/3
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches 3.. if entity @s[scores={zf_hold_ldl=3..,element_cannon=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:again_refined_earth"}}}}] at @s run function pld:system/zf/shifang/incool/earth/3

#检测普通鱼
#execute if predicate pld:mainhand/fish run function pld:system/zf/cook/fish
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:fish"}}}}] run function pld:system/zf/cook/fish
#检测鲑鱼
#execute if predicate pld:mainhand/salmon run function pld:system/zf/cook/salmon
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:salmon"}}}}] run function pld:system/zf/cook/salmon
#检测兔肉
#execute if predicate pld:mainhand/rabbit run function pld:system/zf/cook/rabbit
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:rabbit"}}}}] run function pld:system/zf/cook/rabbit

#接口-施法元素检查
function #pld:zf/yuansu_main
