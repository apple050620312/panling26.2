#检查玩家进度
execute if score @s process_yao_hide matches 8.. run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_yao_hide matches 8 run function pld:system/truth/yao/4/book
execute if score @s process_yao_hide matches 6..7 run function pld:system/truth/yao/4/check/check_pos
execute unless score @s process_yao_hide matches 6.. run function pld:system/truth/yao/4/chat

#回收书本
clear @s written_book[custom_data={id:"panling:book_yh4"}]

#重置激活记分板
scoreboard players set @s trigger_yao_hide 0