#物品debuff
#scoreboard players reset @s temp
execute if score #system final_battle_phase matches 1 as @s[nbt={Inventory:[{tag:{id:"panling:zf_core_metal"}}]}] run function pld:instances/ture_pangu/block/core_debuff
execute if score #system final_battle_phase matches 1 as @s[nbt={Inventory:[{tag:{id:"panling:zf_core_wood"}}]}] run function pld:instances/ture_pangu/block/core_debuff
execute if score #system final_battle_phase matches 1 as @s[nbt={Inventory:[{tag:{id:"panling:zf_core_water"}}]}] run function pld:instances/ture_pangu/block/core_debuff
execute if score #system final_battle_phase matches 1 as @s[nbt={Inventory:[{tag:{id:"panling:zf_core_fire"}}]}] run function pld:instances/ture_pangu/block/core_debuff
execute if score #system final_battle_phase matches 1 as @s[nbt={Inventory:[{tag:{id:"panling:zf_core_earth"}}]}] run function pld:instances/ture_pangu/block/core_debuff
execute if score #system final_battle_phase matches 1 unless entity @s[nbt={Inventory:[{tag:{id:"panling:zf_core_metal"}}]}] unless entity @s[nbt={Inventory:[{tag:{id:"panling:zf_core_wood"}}]}] unless entity @s[nbt={Inventory:[{tag:{id:"panling:zf_core_water"}}]}] unless entity @s[nbt={Inventory:[{tag:{id:"panling:zf_core_fire"}}]}] unless entity @s[nbt={Inventory:[{tag:{id:"panling:zf_core_earth"}}]}] run function pld:instances/ture_pangu/block/core_buff_clear
function pld:instances/ture_pangu/block/block_buff_clear
execute if score #system final_battle_phase matches 1 as @s[nbt={Inventory:[{tag:{id:"panling:zf_increase_block"}}]}] run function pld:instances/ture_pangu/block/block_debuff
execute if score #system final_battle_phase matches 1 at @s if block ~ ~-1 ~ diamond_block run effect give @s jump_boost 1 128

#不在阵法放置阶段，清理道具
execute unless score #system final_battle_phase matches 1 run function pld:instances/ture_pangu/block/clear

