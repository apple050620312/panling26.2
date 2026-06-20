function pld:test/zhan/heart/rooms/one_forth
execute if score @s test_radom1 matches 1 if score @s test_radom0 matches 1 run scoreboard players set @s test_room8_1 1
execute if score @s test_radom1 matches 1 if score @s test_radom0 matches 0 run scoreboard players set @s test_room8_1 2
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 1 run scoreboard players set @s test_room8_1 3
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 0 run scoreboard players set @s test_room8_1 4

function pld:test/zhan/heart/rooms/half
execute if score @s test_radom0 matches 1 run scoreboard players set @s test_room8_2 5
execute if score @s test_radom0 matches 0 run scoreboard players set @s test_room8_2 6


scoreboard players set @s test_room8_0 0
scoreboard players set @s test_room8_3 9

function pld:test/zhan/heart/rooms/one_forth
execute if score @s test_radom1 matches 1 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room8_2 >< @s test_room8_3
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 1 run scoreboard players operation @s test_room8_1 >< @s test_room8_3
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room8_0 >< @s test_room8_3

function pld:test/zhan/heart/rooms/one_third
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 1 run scoreboard players operation @s test_room8_1 >< @s test_room8_2
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room8_0 >< @s test_room8_2

function pld:test/zhan/heart/rooms/half
execute if score @s test_radom0 matches 1 run scoreboard players operation @s test_room8_0 >< @s test_room8_1