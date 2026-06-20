#将核心处的裝備丢到slot5里
#把0、3位置清理掉
data remove block ~ ~ ~ Items.[{Slot:0b}]
#把物品丢到5
data modify block ~ ~ ~ Items[{Slot:3b}].Slot set value 5b

#幸运玩家 @p[tag=legend_check]
tag @p add legend_check

#按照已有id赋值
execute as @p[tag=legend_check] run function pld:system/dz/dzlegend/refine/check_id

#随机获得id
execute if block ~-3 ~2 ~ chest positioned ~-3 ~2 ~ run function pld:system/dz/dzlegend/tagset/loot
#根据tagid追加词条&legend_id
# #system temp4 = tagid
execute if score #system temp4 matches 0..6 store result storage pld:macro id int 1 run scoreboard players get #system temp4\nexecute if score #system temp4 matches 0..6 run function pld:system/dz/dzlegend/refine/macro_call with storage pld:macro\n#处理后缀
# #system temp = limit
execute store result score #system temp run data get block ~ ~ ~ Items[{Slot:5b}].tag.limit
# #system temp2 = element
execute store result score #system temp2 run data get block ~ ~ ~ Items[{Slot:5b}].tag.element
# #system temp3 = slot
execute store result score #system temp3 run data get block ~ ~ ~ Items[{Slot:5b}].tag.slot
# #system temp4 = tagid


#名称处理
execute if block ~-3 ~2 ~ chest positioned ~-3 ~3 ~ run function pld:system/dz/dzlegend/tagset/name/summon
execute if block ~-3 ~4 ~ oak_sign run data modify block ~ ~ ~ Items.[{Slot:5b}].tag.display.Name set from block ~-3 ~4 ~ front_text.messages[0]
execute if block ~-3 ~4 ~ oak_sign run setblock ~-3 ~4 ~ air

#清理用过的tag
execute as @p[tag=legend_check] run function pld:system/dz/dzlegend/refine/clear_id

tag @a[tag=legend_check] remove legend_check

tellraw @p {"translate":"pl.refine_success2"}
playsound minecraft:block.anvil.use block @a[distance=..5] ~ ~ ~