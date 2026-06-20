#获取玩家身上的方块数量
execute store result score @s block_count run clear @s diamond_block[custom_data={id:"panling:zf_increase_block"}] 0
attribute @s[scores={block_count=1..}] movement_speed modifier add 10-0-0-0-1 "真盘-阵法增幅块debuff1" -0.8 multiply_base
attribute @s[scores={block_count=2..}] movement_speed modifier add 10-0-0-0-2 "真盘-阵法增幅块debuff2" -0.8 multiply_base
attribute @s[scores={block_count=3..}] movement_speed modifier add 10-0-0-0-3 "真盘-阵法增幅块debuff3" -0.8 multiply_base
attribute @s[scores={block_count=4..}] movement_speed modifier add 10-0-0-0-4 "真盘-阵法增幅块debuff4" -0.8 multiply_base
attribute @s[scores={block_count=5..}] movement_speed modifier add 10-0-0-0-5 "真盘-阵法增幅块debuff5" -0.8 multiply_base
attribute @s[scores={block_count=6..}] movement_speed modifier add 10-0-0-0-6 "真盘-阵法增幅块debuff6" -0.8 multiply_base
attribute @s[scores={block_count=7..}] movement_speed modifier add 10-0-0-0-7 "真盘-阵法增幅块debuff7" -0.8 multiply_base
attribute @s[scores={block_count=8..}] movement_speed modifier add 10-0-0-0-8 "真盘-阵法增幅块debuff8" -0.8 multiply_base
attribute @s[scores={block_count=9..}] movement_speed modifier add 10-0-0-0-9 "真盘-阵法增幅块debuff9" -0.8 multiply_base
attribute @s[scores={block_count=10..}] movement_speed modifier add 10-0-0-0-10 "真盘-阵法增幅块debuff10" -0.8 multiply_base

effect clear @s[scores={block_count=1..}] jump_boost