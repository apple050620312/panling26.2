#获取玩家身上的方块数量
execute store result score @s block_count run clear @s diamond_block[custom_data={id:"panling:zf_increase_block"}] 0
attribute @s[scores={block_count=1..}] movement_speed modifier add panling:mod_10_0_0_0_1 -0.8 add_multiplied_base
attribute @s[scores={block_count=2..}] movement_speed modifier add panling:mod_10_0_0_0_2 -0.8 add_multiplied_base
attribute @s[scores={block_count=3..}] movement_speed modifier add panling:mod_10_0_0_0_3 -0.8 add_multiplied_base
attribute @s[scores={block_count=4..}] movement_speed modifier add panling:mod_10_0_0_0_4 -0.8 add_multiplied_base
attribute @s[scores={block_count=5..}] movement_speed modifier add panling:mod_10_0_0_0_5 -0.8 add_multiplied_base
attribute @s[scores={block_count=6..}] movement_speed modifier add panling:mod_10_0_0_0_6 -0.8 add_multiplied_base
attribute @s[scores={block_count=7..}] movement_speed modifier add panling:mod_10_0_0_0_7 -0.8 add_multiplied_base
attribute @s[scores={block_count=8..}] movement_speed modifier add panling:mod_10_0_0_0_8 -0.8 add_multiplied_base
attribute @s[scores={block_count=9..}] movement_speed modifier add panling:mod_10_0_0_0_9 -0.8 add_multiplied_base
attribute @s[scores={block_count=10..}] movement_speed modifier add panling:mod_10_0_0_0_10 -0.8 add_multiplied_base

effect clear @s[scores={block_count=1..}] jump_boost