scoreboard players set @s ld_count 0
execute store result score @s ld_count run data get block 1351 39 494 Items
execute unless score @s ld_count matches 1 run tellraw @s {"translate":"pl.info.enchant_fail1"}
execute if score @s ld_count matches 1 unless block 1351 39 494 hopper{Items:[{Slot:0b,components:{custom_data:{id:"panling:honor_head"}}}]} run tellraw @s {"translate":"pl.info.enchant_fail2"}

execute if score @s ld_count matches 1 if block 1351 39 494 hopper{Items:[{Slot:0b,components:{custom_data:{id:"panling:honor_head",enchanted:0}}}]} run function pld:system/honor_shop/enchant4/enchant4
