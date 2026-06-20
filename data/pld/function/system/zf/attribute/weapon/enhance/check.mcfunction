#根据等级和id获取强化条目细节 并给予屬性
#enhance_lvl
execute store result score #temp temp run data get storage pld:system Temp_zf_weapon.tag.enhance_lvl

execute if score #temp temp matches 1.. run function pld:system/zf/attribute/weapon/enhance/1
execute if score #temp temp matches 2.. run function pld:system/zf/attribute/weapon/enhance/2
execute if score #temp temp matches 3.. run function pld:system/zf/attribute/weapon/enhance/3
execute if score #temp temp matches 4.. run function pld:system/zf/attribute/weapon/enhance/4
