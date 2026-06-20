#检查玩家进度
execute unless score @s process_shen_hide matches ..7 run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_shen_hide matches 6..7 run function pld:system/truth/shen/4/check/check_pos

#回收书本
clear @s written_book[custom_data={id:"panling:book_sh4"}]

#重置激活记分板
scoreboard players set @s trigger_shen_hide 0