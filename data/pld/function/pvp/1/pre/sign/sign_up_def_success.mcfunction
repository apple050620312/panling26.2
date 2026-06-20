scoreboard players set @s pvp_team 2
tellraw @s {"translate":"pl.pvp.info.pvp1.def_sign_success"}
tellraw @a [{"selector":"@s","color":"yellow"},{"translate":"pl.pvp.info.pvp1.def_sign_toall"}]
give @p minecraft:filled_map[custom_name='{"translate":"pl.pvp1.item.name.def_map"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp1.item.lore.def_map1"}','{"translate":"pl.pvp1.item.lore.def_map2"}','{"translate":"pl.pvp1.item.lore.def_map3"}','{"translate":"pl.pvp1.item.lore.def_map4"}','{"translate":"pl.pvp1.item.lore.def_map5"}','{"translate":"pl.pvp1.item.lore.def_map6"}','{"translate":"pl.pvp1.item.lore.def_map7"}'],custom_data={map:2,id:"panling:pvp1_def_map"}]

