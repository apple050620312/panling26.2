tag @s add loot_tag
execute as @p[tag=the_killer] run loot spawn ~ ~ ~ kill @e[limit=1,tag=loot_tag]
tag @s remove loot_tag

