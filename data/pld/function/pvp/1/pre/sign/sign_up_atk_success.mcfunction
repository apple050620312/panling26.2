scoreboard players set @s pvp_team 1
tellraw @s {"translate":"pl.pvp.info.pvp1.atk_sign_success"}
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.pvp.info.pvp1.atk_sign_toall"}]
give @s minecraft:filled_map{map:2,HideFlags:63,id:"panling:pvp1_atk_map",display:{Name:'{"translate":"pl.pvp1.item.name.atk_map"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp1.item.lore.atk_map1"}','{"translate":"pl.pvp1.item.lore.atk_map2"}','{"translate":"pl.pvp1.item.lore.atk_map3"}','{"translate":"pl.pvp1.item.lore.atk_map4"}','{"translate":"pl.pvp1.item.lore.atk_map5"}']}}
tp @s 3266 21 -138 -90 0

