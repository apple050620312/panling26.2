summon armor_stand ~ ~ ~ {Tags:["panling","legend_check","name1"],CustomName:'{"translate":""}',CustomNameVisible:false,Marker:1b}

#处理后缀
# #system temp = limit
# #system temp2 = element
# #system temp3 = slot
#根据记分板获得名称 storage pld:system dzTemp
function pld:system/dz/dzlegend/tagset/name/getbase
data modify entity @e[limit=1,tag=panling,tag=legend_check,tag=name1] CustomName set from storage pld:system dzTemp


#生成告示牌 # #system temp4 = tagid
execute if score #system temp4 matches 0 run setblock ~ ~1 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.item.name.legend_0"},{"selector":"@e[tag=panling,tag=legend_check,tag=name1]"}]','{"translate":""}','{"translate":""}','{"translate":""}']}} replace
execute if score #system temp4 matches 1 run setblock ~ ~1 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.item.name.legend_1"},{"selector":"@e[tag=panling,tag=legend_check,tag=name1]"}]','{"translate":""}','{"translate":""}','{"translate":""}']}} replace
execute if score #system temp4 matches 2 run setblock ~ ~1 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.item.name.legend_2"},{"selector":"@e[tag=panling,tag=legend_check,tag=name1]"}]','{"translate":""}','{"translate":""}','{"translate":""}']}} replace
execute if score #system temp4 matches 3 run setblock ~ ~1 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.item.name.legend_3"},{"selector":"@e[tag=panling,tag=legend_check,tag=name1]"}]','{"translate":""}','{"translate":""}','{"translate":""}']}} replace
execute if score #system temp4 matches 4 run setblock ~ ~1 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.item.name.legend_4"},{"selector":"@e[tag=panling,tag=legend_check,tag=name1]"}]','{"translate":""}','{"translate":""}','{"translate":""}']}} replace
execute if score #system temp4 matches 5 run setblock ~ ~1 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.item.name.legend_5"},{"selector":"@e[tag=panling,tag=legend_check,tag=name1]"}]','{"translate":""}','{"translate":""}','{"translate":""}']}} replace
execute if score #system temp4 matches 6 run setblock ~ ~1 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.item.name.legend_6"},{"selector":"@e[tag=panling,tag=legend_check,tag=name1]"}]','{"translate":""}','{"translate":""}','{"translate":""}']}} replace

#处理文本


kill @e[type=armor_stand,tag=legend_check]