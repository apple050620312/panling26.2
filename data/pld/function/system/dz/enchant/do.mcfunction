#删除封印条目
data remove block ~ ~ ~ Items.[{slot:3}].tag.display.Lore.[-1]
#复制&删除锻造者条目
data modify storage pld:system dzTemp set from block ~ ~ ~ Items.[{slot:3}].tag.display.Lore.[-1]
data remove block ~ ~ ~ Items.[{slot:3}].tag.display.Lore.[-1]
#删除结尾条目
data remove block ~ ~ ~ Items.[{slot:3}].tag.display.Lore.[-1]

#删除附灵条目
data remove block ~ ~ ~ Items.[{slot:3}].tag.display.Lore.[-1]
#复制附灵条目
data modify block ~ ~ ~ Items.[{slot:3}].tag.display.Lore append from block ~ ~ ~ Items.[{slot:0}].tag.display.Lore[-1] 
#复制附灵id
data modify block ~ ~ ~ Items.[{slot:3}].tag.enchant_id set from block ~ ~ ~ Items.[{slot:0}].tag.enchant_id 
data modify block ~ ~ ~ Items.[{slot:3}].tag.enchant_lvl set from block ~ ~ ~ Items.[{slot:0}].tag.lvl


#增加结尾条目
data modify block ~ ~ ~ Items[{slot:3}].tag.display.Lore append value '{"translate":"pl.lore.weapon_end"}'
#增加锻造者条目
data modify block ~ ~ ~ Items[{slot:3}].tag.display.Lore append from storage pld:system dzTemp
#增加封印条目
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{type:1}}}]} run data modify block ~ ~ ~ Items[{slot:3}].tag.display.Lore append value '{"translate":"pl.lore.weaponinfo2a"}'
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{type:2}}}]} run data modify block ~ ~ ~ Items[{slot:3}].tag.display.Lore append value '{"translate":"pl.lore.armorinfo2a"}'


execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace3",enchant_lvl:1}}}]} run function pld:system/dz/enchant/furnace/3
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace4",enchant_lvl:1}}}]} run function pld:system/dz/enchant/furnace/4_1
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace4",enchant_lvl:2}}}]} run function pld:system/dz/enchant/furnace/4_2
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace5",enchant_lvl:1}}}]} run function pld:system/dz/enchant/furnace/5_1
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace5",enchant_lvl:2}}}]} run function pld:system/dz/enchant/furnace/5_2
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace5",enchant_lvl:3}}}]} run function pld:system/dz/enchant/furnace/5_3
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace6",enchant_lvl:1}}}]} run function pld:system/dz/enchant/furnace/6_1
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace6",enchant_lvl:2}}}]} run function pld:system/dz/enchant/furnace/6_2
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{id:"panling:furnace6",enchant_lvl:3}}}]} run function pld:system/dz/enchant/furnace/6_3
scoreboard players set @p success 1
