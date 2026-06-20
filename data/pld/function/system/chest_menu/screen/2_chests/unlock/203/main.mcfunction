clear @s iron_ingot[custom_data={id:"panling:silver_ticket"}] 4
tellraw @s {"translate":"pl.info.chest_menu.unlock_chest_agree"}
scoreboard players set @s chests_enabled 4

