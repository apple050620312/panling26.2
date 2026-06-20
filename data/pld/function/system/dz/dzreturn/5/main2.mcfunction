playsound minecraft:block.anvil.use block @a[distance=..5] ~3 ~-1 ~
scoreboard players set @s dzsuccess 0
tellraw @s {"translate":"pl.dzsuccess"}

#制作者署名 slot5b 羽毛 裝備
#获取玩家头颅 
execute as @s run loot replace block ~ ~1 ~ container.0 loot pld:player_head
#生成告示牌合并内容
execute as @s run setblock ~ ~2 ~ minecraft:oak_sign{front_text:{messages:['[{"translate":"pl.lore.maker"}.tag.SkullOwner.Name","block":"~ ~-1 ~","color":"yellow","italic":false}]','{"translate":""}','{"translate":""}','{"translate":""}']}}] replace

#将条目合并入裝備&羽毛
execute unless block ~3 ~-1 ~ minecraft:dispenser[custom_data={Items:[{Slot:5b,components:{"minecraft:custom_data":{named:1}}}]}] unless block ~3 ~-1 ~ minecraft:dispenser[custom_data={Items:[{Slot:5b,id:"minecraft:feather"}]}] as @s run data modify block ~3 ~-1 ~ Items[{Slot:5b}].tag.display.Lore insert -2 from block ~ ~2 ~ front_text.messages[0]
#execute unless block ~3 ~-1 ~ minecraft:dispenser{Items:[{Slot:5b,id:"minecraft:feather"}]} as @s run data modify block ~3 ~-1 ~ Items[{Slot:5b}].tag.display.Lore insert -4 value '{"translate":""}'
execute unless block ~3 ~-1 ~ minecraft:dispenser{Items:[{Slot:5b,components:{"minecraft:custom_data":{named:1}}}] if block ~3 ~-1 ~ minecraft:dispenser{Items:[{Slot:5b,id:"minecraft:feather"}}] as @s} run data modify block ~3 ~-1 ~ Items[{Slot:5b}].tag.display.Lore insert -3 from block ~ ~2 ~ front_text.messages[0]
#execute if block ~3 ~-1 ~ minecraft:dispenser{Items:[{Slot:5b,id:"minecraft:feather"}]} as @s run data modify block ~3 ~-1 ~ Items[{Slot:5b}].tag.display.Lore insert -3 value '{"translate":""}'

data modify block ~3 ~-1 ~ Items[{Slot:5b}].tag.named set value 1


#重置方块
setblock ~ ~2 ~ air
data merge block ~ ~1 ~ {Items:[]}

