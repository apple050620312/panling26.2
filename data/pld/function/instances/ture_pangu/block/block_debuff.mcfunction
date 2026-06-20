#获取玩家身上的方块数量
execute store result score @s block_count run clear @s diamond_block[custom_data={id:"panling:zf_increase_block"}] 0
attribute @s[scores={block_count=1..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_1 -0.8 add_multiplied_base
attribute @s[scores={block_count=2..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_2 -0.8 add_multiplied_base
attribute @s[scores={block_count=3..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_3 -0.8 add_multiplied_base
attribute @s[scores={block_count=4..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_4 -0.8 add_multiplied_base
attribute @s[scores={block_count=5..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_5 -0.8 add_multiplied_base
attribute @s[scores={block_count=6..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_6 -0.8 add_multiplied_base
attribute @s[scores={block_count=7..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_7 -0.8 add_multiplied_base
attribute @s[scores={block_count=8..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_8 -0.8 add_multiplied_base
attribute @s[scores={block_count=9..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_9 -0.8 add_multiplied_base
attribute @s[scores={block_count=10..}] minecraft:generic.movement_speed modifier add panling:uuid_10_0_0_0_10 -0.8 add_multiplied_base

effect clear @s[scores={block_count=1..}] jump_boost