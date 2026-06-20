scoreboard players set @s test_room5_0 0
scoreboard players set @s test_room5_1 3
scoreboard players set @s test_room5_2 4
scoreboard players set @s test_room5_3 7

function pld:test/zhan/heart/rooms/one_forth
execute if score @s test_radom1 matches 1 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room5_2 >< @s test_room5_3
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 1 run scoreboard players operation @s test_room5_1 >< @s test_room5_3
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room5_0 >< @s test_room5_3

function pld:test/zhan/heart/rooms/one_third
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 1 run scoreboard players operation @s test_room5_1 >< @s test_room5_2
execute if score @s test_radom1 matches 0 if score @s test_radom0 matches 0 run scoreboard players operation @s test_room5_0 >< @s test_room5_2

function pld:test/zhan/heart/rooms/half
execute if score @s test_radom0 matches 1 run scoreboard players operation @s test_room5_0 >< @s test_room5_1