#随机
execute as @p[tag=legend_check] run loot replace block ~ ~ ~ container.26 loot pld:dz/legend

#抓取随机结果
execute store result score #system temp4 run data get block ~ ~ ~ Items[{slot:26}].tag.tagid

#清空随机结果
data merge block ~ ~ ~ {Items:[]}

