#检查玩家进度
execute unless score @s process_xian_hide matches ..9 run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_xian_hide matches 8..9 run function pld:system/truth/xian/5/check/check_pos


#回收书本
clear @s written_book{id:"panling:book_xh5"}

#重置激活记分板
scoreboard players set @s trigger_xian_hide 0