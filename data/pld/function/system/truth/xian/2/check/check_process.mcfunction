#检查玩家进度
execute if score @s process_xian_hide matches 4.. run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_xian_hide matches 4 run function pld:system/truth/xian/2/book
execute if score @s process_xian_hide matches 2..3 run function pld:system/truth/xian/2/check/check_pos
execute unless score @s process_xian_hide matches 2.. run function pld:system/truth/xian/2/chat



#回收书本
clear @s written_book[custom_data={id:"panling:book_xh2"}]

#重置激活记分板
scoreboard players set @s trigger_xian_hide 0