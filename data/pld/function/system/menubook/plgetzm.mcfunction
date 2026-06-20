clear @s minecraft:green_dye{display:{Lore:['{"translate":"pl.item.lore.zm0"}'],Name:'{"translate":"pl.item.name.zm0"}'},id:"panling:zm_shen"}
clear @s minecraft:purple_dye{display:{Lore:['{"translate":"pl.item.lore.zm1"}'],Name:'{"translate":"pl.item.name.zm1"}'},id:"panling:zm_yao"}
clear @s minecraft:lapis_lazuli{display:{Lore:['{"translate":"pl.item.lore.zm2"}'],Name:'{"translate":"pl.item.name.zm2"}'},id:"panling:zm_xian"}
clear @s minecraft:red_dye{display:{Lore:['{"translate":"pl.item.lore.zm3"}'],Name:'{"translate":"pl.item.name.zm3"}'},id:"panling:zm_zhan"}
clear @s minecraft:cocoa_beans{display:{Lore:['{"translate":"pl.item.lore.zm4"}'],Name:'{"translate":"pl.item.name.zm4"}'},id:"panling:zm_ren"}

clear @s minecraft:pink_dye{display:{Lore:['{"translate":"pl.item.lore.npcbubblea"}','{"translate":"pl.item.lore.npcbubbleb"}'],Name:'{"translate":"pl.item.name.npcbubble"}'},id:"panling:NPC_bubble"}

give @s minecraft:pink_dye{display:{Lore:['{"translate":"pl.item.lore.npcbubblea"}','{"translate":"pl.item.lore.npcbubbleb"}'],Name:'{"translate":"pl.item.name.npcbubble"}'},id:"panling:NPC_bubble"} 3

give @s[scores={race=0}] minecraft:green_dye{display:{Lore:['{"translate":"pl.item.lore.zm0"}'],Name:'{"translate":"pl.item.name.zm0"}'},id:"panling:zm_shen"} 3
give @s[scores={race=1}] minecraft:purple_dye{display:{Lore:['{"translate":"pl.item.lore.zm1"}'],Name:'{"translate":"pl.item.name.zm1"}'},id:"panling:zm_yao"} 3
give @s[scores={race=2}] minecraft:lapis_lazuli{display:{Lore:['{"translate":"pl.item.lore.zm2"}'],Name:'{"translate":"pl.item.name.zm2"}'},id:"panling:zm_xian"} 3
give @s[scores={race=3}] minecraft:red_dye{display:{Lore:['{"translate":"pl.item.lore.zm3"}'],Name:'{"translate":"pl.item.name.zm3"}'},id:"panling:zm_zhan"} 3
give @s[scores={race=4}] minecraft:cocoa_beans{display:{Lore:['{"translate":"pl.item.lore.zm4"}'],Name:'{"translate":"pl.item.name.zm4"}'},id:"panling:zm_ren"} 3

scoreboard players reset @s menu 