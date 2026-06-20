clear @s iron_ingot{id:"panling:silver_ticket"} 1
tellraw @s {"translate":"pl.info.chest_menu.unlock_chest_agree"}
scoreboard players set @s chests_enabled 2
