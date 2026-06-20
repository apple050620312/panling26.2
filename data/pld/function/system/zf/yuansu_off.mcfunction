#副手元素文件
#检测金元素
execute if predicate pld:offhand/metal at @s run function pld:system/zf/shifang/incool/metal/1
#检测精炼金元素
execute if predicate pld:offhand/refined_metal at @s run function pld:system/zf/shifang/incool/metal/2
#检测浓缩金元素
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches ..-3 if predicate pld:offhand/again_refined_metal at @s run function pld:system/zf/shifang/incool/metal/3

#检测木元素
execute if predicate pld:offhand/wood at @s run function pld:system/zf/shifang/incool/wood/1
#检测精炼木元素
execute if predicate pld:offhand/refined_wood at @s run function pld:system/zf/shifang/incool/wood/2
#检测浓缩木元素
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches ..-3 if predicate pld:offhand/again_refined_wood at @s run function pld:system/zf/shifang/incool/wood/3

#检测水元素
execute if predicate pld:offhand/water at @s run function pld:system/zf/shifang/incool/water/1
#检测精炼水元素
execute if predicate pld:offhand/refined_water at @s run function pld:system/zf/shifang/incool/water/2
#检测浓缩水元素
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches ..-3 if predicate pld:offhand/again_refined_water at @s run function pld:system/zf/shifang/incool/water/3

#检测火元素
execute if predicate pld:offhand/fire at @s run function pld:system/zf/shifang/incool/fire/1
#检测精炼火元素
execute if predicate pld:offhand/refined_fire at @s run function pld:system/zf/shifang/incool/fire/2
#检测浓缩火元素
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches ..-3 if predicate pld:offhand/again_refined_fire at @s run function pld:system/zf/shifang/incool/fire/3

#检测土元素
execute if predicate pld:offhand/earth at @s run function pld:system/zf/shifang/incool/earth/1
#检测精炼土元素
execute if predicate pld:offhand/refined_earth at @s run function pld:system/zf/shifang/incool/earth/2
#检测浓缩土元素
execute if score @s element_cannon matches 1 if score @s zf_hold_ldl matches ..-3 if predicate pld:offhand/again_refined_earth at @s run function pld:system/zf/shifang/incool/earth/3

#检测普通鱼
execute if predicate pld:offhand/fish run function pld:system/zf/cook/fish
#检测鲑鱼
execute if predicate pld:mainhand/salmon run function pld:system/zf/cook/salmon
#检测兔肉
execute if predicate pld:mainhand/rabbit run function pld:system/zf/cook/rabbit

#接口-施法元素检查
function #pld:zf/yuansu_off