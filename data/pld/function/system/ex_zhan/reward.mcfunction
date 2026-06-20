scoreboard players set @s[scores={ex_zhan_battle=2}] ex_zhan 1
playsound entity.player.levelup ambient @s[scores={ex_zhan=1}]
tellraw @s[scores={ex_zhan=1,ex_zhan_battle=2}] {"translate": "pl.info.ze_finish1"}
tellraw @s[scores={ex_zhan=1}] {"translate": "pl.info.ze_finish2"}
execute if score @s ex_zhan matches 1 run function pld:system/ex_zhan/reward/check
give @s minecraft:iron_ingot[custom_name='{"translate":"pl.item.name.silver"}',custom_data={id:"panling:silver_ticket"}]
tellraw @s[scores={ex_zhan=1,ex_zhan_battle=2}] {"translate": "pl.info.ze_finish3"}
attribute @s[scores={ex_zhan=1,ex_zhan_battle=2}] minecraft:generic.armor modifier add 0-0-0-2-3 "战神族支线奖励-護甲" 2 add 

scoreboard players set @s[scores={ex_zhan=1,ex_zhan_battle=2,job=0}] attack_damage1_exzhan 15
scoreboard players set @s[scores={ex_zhan=1,ex_zhan_battle=2,job=1}] archer_damage1_exzhan 10
scoreboard players set @s[scores={ex_zhan=1,ex_zhan_battle=2,job=2}] exzhan_zf_str 1
tellraw @s[scores={ex_zhan=1,ex_zhan_battle=2}] {"translate": "pl.info.ze_finish4"}
scoreboard players add @s[scores={ex_zhan=1,ex_zhan_battle=2}] racefriend4 10
scoreboard players add @s[scores={ex_zhan=1,ex_zhan_battle=2}] racefriend3 14
advancement grant @s[scores={ex_zhan=1,ex_zhan_battle=2}] only pld:exploration/side_zhan
tp @s 283 44 -6 0 0