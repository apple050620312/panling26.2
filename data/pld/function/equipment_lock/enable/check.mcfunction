#检查裝備数据
scoreboard players set #temp temp 4
scoreboard players set #temp temp2 114514
execute if data block ~ 255 ~ Items[0].tag.limit store result score #temp temp run data get block ~ 255 ~ Items[0].tag.limit
execute store result score #temp temp2 run data get block ~ 255 ~ Items[0].tag.limit_lvl 
execute store result score #temp temp3 run scoreboard players get @s level
execute if score #temp temp3 >= #temp temp2 if score @s job = #temp temp run function pld:equipment_lock/enable/main
execute if score #temp temp3 >= #temp temp2 if score #temp temp matches 3 run function pld:equipment_lock/enable/main
execute if score @s job = #temp temp if score #temp temp3 < #temp temp2 run tellraw @s [{"translate": "pl.info.equip_level_limited"},{"nbt":"Items[0].components."minecraft:custom_name"","block":"~ 255 ~","interpret":true}]

#limit
#rare
#branch
#attribute_to_enable
#PLattributes
    #base
    #multiply_base
    #multiply
    #final_add
        #
        #protection_level
        #projectile_protection_level
        #
        #speed_pc   =zf_cool
        #atk_pt     =zf_str =bow_str
        #最終攻击点数加成在此处理
#resident:{branch_level:0}