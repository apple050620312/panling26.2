attribute @s[scores={race=0,ex_shen=1}] minecraft:generic.max_health modifier add 0-0-0-2-0 "神族支线奖励-生命" 2 add 
attribute @s[scores={race=0,ex_shen=1}] minecraft:generic.armor_toughness modifier add 0-0-0-2-0 "神族支线奖励-韧性" 1 add
attribute @s[scores={race=1,ex_yao=1}] minecraft:generic.max_health modifier add 0-0-0-2-1 "妖族支线奖励-生命" 2 add 
attribute @s[scores={race=1,ex_yao=1}] minecraft:generic.movement_speed modifier add 0-0-0-2-1 "妖族支线奖励-速度" 0.05 multiply_base
attribute @s[scores={race=2,ex_xian=1}] minecraft:generic.max_health modifier add 0-0-0-2-2 "仙族支线奖励-生命" 2 add 
attribute @s[scores={race=2,ex_xian=1}] minecraft:generic.knockback_resistance modifier add 0-0-0-2-2 "仙族支线奖励-抗性" 0.2 add
attribute @s[scores={race=3,ex_zhan=1}] minecraft:generic.armor modifier add 0-0-0-2-3 "战神族支线奖励-護甲" 2 add 
scoreboard players set @s[scores={ex_zhan=1,job=0}] attack_damage1_exzhan 15
scoreboard players set @s[scores={ex_zhan=1,job=1}] archer_damage1_exzhan 10
scoreboard players set @s[scores={ex_zhan=1,job=2}] exzhan_zf_str 1
attribute @s[scores={race=4,ex_ren=1}] minecraft:generic.max_health modifier add 0-0-0-2-4 "人族支线奖励-生命" 2 add 
attribute @s[scores={race=4,ex_ren=1}] minecraft:generic.armor_toughness modifier add 0-0-0-2-4 "人族支线奖励-韧性" 1 add
attribute @s[scores={ex_te32=1}] minecraft:generic.armor modifier add 0-0-1-0-4 "雨竹支线奖励-護甲" 2 add 
scoreboard players set @s[scores={ex_murder=1,job=0}] attack_damage1_murder 15
scoreboard players set @s[scores={ex_murder=1,job=1}] archer_damage1_murder 10
scoreboard players set @s[scores={ex_murder=1,job=2}] murder_zf_str 1
attribute @s[scores={ex_doctor=1}] minecraft:generic.max_health modifier add 0-0-1-0-0 "李大夫支线奖励-生命" 2 add 
attribute @s[scores={ex_sunday=3}] minecraft:generic.armor_toughness modifier add 0-0-1-0-3 "辛齐天支线奖励-韧性" 1 add
attribute @s[scores={ex_sword=1}] minecraft:generic.max_health modifier add 0-0-1-0-2 "剑意支线奖励-生命" 2 add 

attribute @s[scores={race=0,finish_shen_hide=1}] minecraft:generic.max_health modifier add 0-0-1-1-0 "神族隐藏奖励-生命" 2 add 
attribute @s[scores={race=1,finish_yao_hide=1}] minecraft:generic.max_health modifier add 0-0-1-1-1 "妖族隐藏奖励-生命" 2 add 
attribute @s[scores={race=2,finish_xian_hide=1}] minecraft:generic.max_health modifier add 0-0-1-1-2 "仙族隐藏奖励-生命" 2 add 
attribute @s[scores={race=3,finish_zhan_hide=1}] minecraft:generic.max_health modifier add 0-0-1-1-3 "战神族隐藏奖励-生命" 2 add 
attribute @s[scores={race=4,finish_ren_hide=1}] minecraft:generic.max_health modifier add 0-0-1-1-4 "人族隐藏奖励-生命" 2 add 


