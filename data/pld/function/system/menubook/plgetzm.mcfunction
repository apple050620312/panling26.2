clear @s minecraft:green_dye[custom_name='{"translate":"pl.item.name.zm0"}',lore=['{"translate":"pl.item.lore.zm0"}'],custom_data={id:"panling:zm_shen"}]
clear @s minecraft:purple_dye[custom_name='{"translate":"pl.item.name.zm1"}',lore=['{"translate":"pl.item.lore.zm1"}'],custom_data={id:"panling:zm_yao"}]
clear @s minecraft:lapis_lazuli[custom_name='{"translate":"pl.item.name.zm2"}',lore=['{"translate":"pl.item.lore.zm2"}'],custom_data={id:"panling:zm_xian"}]
clear @s minecraft:red_dye[custom_name='{"translate":"pl.item.name.zm3"}',lore=['{"translate":"pl.item.lore.zm3"}'],custom_data={id:"panling:zm_zhan"}]
clear @s minecraft:cocoa_beans[custom_name='{"translate":"pl.item.name.zm4"}',lore=['{"translate":"pl.item.lore.zm4"}'],custom_data={id:"panling:zm_ren"}]

clear @s minecraft:pink_dye[custom_name='{"translate":"pl.item.name.npcbubble"}',lore=['{"translate":"pl.item.lore.npcbubblea"}','{"translate":"pl.item.lore.npcbubbleb"}'],custom_data={id:"panling:NPC_bubble"}]

give @s minecraft:pink_dye[custom_name='{"translate":"pl.item.name.npcbubble"}',lore=['{"translate":"pl.item.lore.npcbubblea"}','{"translate":"pl.item.lore.npcbubbleb"}'],custom_data={id:"panling:NPC_bubble"}] 3

give @s[scores={race=0}] minecraft:green_dye[custom_name='{"translate":"pl.item.name.zm0"}',lore=['{"translate":"pl.item.lore.zm0"}'],custom_data={id:"panling:zm_shen"}] 3
give @s[scores={race=1}] minecraft:purple_dye[custom_name='{"translate":"pl.item.name.zm1"}',lore=['{"translate":"pl.item.lore.zm1"}'],custom_data={id:"panling:zm_yao"}] 3
give @s[scores={race=2}] minecraft:lapis_lazuli[custom_name='{"translate":"pl.item.name.zm2"}',lore=['{"translate":"pl.item.lore.zm2"}'],custom_data={id:"panling:zm_xian"}] 3
give @s[scores={race=3}] minecraft:red_dye[custom_name='{"translate":"pl.item.name.zm3"}',lore=['{"translate":"pl.item.lore.zm3"}'],custom_data={id:"panling:zm_zhan"}] 3
give @s[scores={race=4}] minecraft:cocoa_beans[custom_name='{"translate":"pl.item.name.zm4"}',lore=['{"translate":"pl.item.lore.zm4"}'],custom_data={id:"panling:zm_ren"}] 3

scoreboard players reset @s menu 