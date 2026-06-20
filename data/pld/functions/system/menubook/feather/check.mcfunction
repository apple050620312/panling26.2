execute as @s[scores={race=0}] if entity @s[advancements={pld:system/mission_guide/shen/main/feather=true}] run function pld:system/menubook/feather/getfeather
execute as @s[scores={race=1}] if entity @s[advancements={pld:system/mission_guide/yao/main/feather=true}] run function pld:system/menubook/feather/getfeather
execute as @s[scores={race=2}] if entity @s[advancements={pld:system/mission_guide/xian/main/feather=true}] run function pld:system/menubook/feather/getfeather
execute as @s[scores={race=3}] if entity @s[advancements={pld:system/mission_guide/zhan/main/feather=true}] run function pld:system/menubook/feather/getfeather
execute as @s[scores={race=4}] if entity @s[advancements={pld:system/mission_guide/ren/main/feather=true}] run function pld:system/menubook/feather/getfeather

execute as @s[scores={race=0}] unless entity @s[advancements={pld:system/mission_guide/shen/main/feather=true}] run tellraw @s {"translate":"pl.info.menu7_8_resis"}
execute as @s[scores={race=1}] unless entity @s[advancements={pld:system/mission_guide/yao/main/feather=true}] run tellraw @s {"translate":"pl.info.menu7_8_resis"}
execute as @s[scores={race=2}] unless entity @s[advancements={pld:system/mission_guide/xian/main/feather=true}] run tellraw @s {"translate":"pl.info.menu7_8_resis"}
execute as @s[scores={race=3}] unless entity @s[advancements={pld:system/mission_guide/zhan/main/feather=true}] run tellraw @s {"translate":"pl.info.menu7_8_resis"}
execute as @s[scores={race=4}] unless entity @s[advancements={pld:system/mission_guide/ren/main/feather=true}] run tellraw @s {"translate":"pl.info.menu7_8_resis"}

scoreboard players reset @s menu