scoreboard players set @s test_room1_0 2
scoreboard players set @s test_room1_1 3
scoreboard players set @s test_room1_2 4
scoreboard players set @s test_room1_3 5

function pld:test/zhan/heart/rooms/one_forth
execute if score @s test_radom1 matches 1 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room1_2 >< @s test_room1_3
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 1 run scoreboard players operation @s test_room1_1 >< @s test_room1_3
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room1_0 >< @s test_room1_3

function pld:test/zhan/heart/rooms/one_third
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 1 run scoreboard players operation @s test_room1_1 >< @s test_room1_2
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room1_0 >< @s test_room1_2

function pld:test/zhan/heart/rooms/half
execute if score @s test_radom0 matches 1 run scoreboard players operation @s test_room1_0 >< @s test_room1_1