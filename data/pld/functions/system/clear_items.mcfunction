clear @s wither_rose
clear @s glass_bottle
clear @s bowl
clear @s potion{Potion:"minecraft:water"}

clear @s[scores={test_bless_act=0,bless_cool=1..}] totem_of_undying{id:"panling:shen_test_bless"}

execute unless score @s test_bless_act matches 0 run clear @s totem_of_undying{id:"panling:shen_test_bless"}
