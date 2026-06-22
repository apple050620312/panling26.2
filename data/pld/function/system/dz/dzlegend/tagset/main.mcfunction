#幸运玩家 @p[tag=legend_check]
tag @p add legend_check

#按照已有id赋值
#execute as @p[tag=legend_check] run function pld:system/dz/dzweapon/enhance/check_id

#随机获得id
execute if block ~-3 ~2 ~ chest positioned ~-3 ~2 ~ run function pld:system/dz/dzlegend/tagset/loot
#根据tagid追加词条&legend_id
# #system temp4 = tagid
execute if score #system temp4 matches 0..6 store result storage pld:macro id int 1 run scoreboard players get #system temp4
execute if score #system temp4 matches 0..6 run function pld:system/dz/dzlegend/tagset/macro_call with storage pld:macro
#处理后缀
# #system temp = limit
# #system temp2 = element
# #system temp3 = slot
# #system temp4 = tagid


#名称处理
execute if block ~-3 ~2 ~ chest positioned ~-3 ~3 ~ run function pld:system/dz/dzlegend/tagset/name/summon
execute if block ~-3 ~4 ~ oak_sign run data modify block ~ ~ ~ Items.[{Slot:5b}].tag.display.Name set from block ~-3 ~4 ~ front_text.messages[0]
execute if block ~-3 ~4 ~ oak_sign run setblock ~-3 ~4 ~ air

tag @a[tag=legend_check] remove legend_check
