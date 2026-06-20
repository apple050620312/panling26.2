execute as @s[scores={ex_sword=1}] run tellraw @s {"translate":"pl.info.ex_sword.finished"}
execute as @s[scores={ex_sword_earth=1}] unless score @s ex_sword matches 1 run tellraw @s {"translate":"pl.info.ex_sword.earth_fail"}
execute unless score @s ex_sword_earth matches 1 run tellraw @s {"translate":"pl.info.ex_sword.earth_success"}
execute unless score @s ex_sword_earth matches 1 run scoreboard players set @s ex_sword_earth 1

execute as @s[scores={ex_sword_earth=1,ex_sword_ren=1,ex_sword_sky=1}] unless score @s ex_sword matches 1 run tp @s 1352 67 526 180 0
