scoreboard players set @s test_radom0 -1
scoreboard players set @s test_radom1 -1
execute if predicate pld:half run scoreboard players set @s test_radom0 1
execute unless score @s test_radom0 matches 1 run scoreboard players set @s test_radom0 0
execute if predicate pld:half run scoreboard players set @s test_radom1 1
execute unless score @s test_radom1 matches 1 run scoreboard players set @s test_radom1 0