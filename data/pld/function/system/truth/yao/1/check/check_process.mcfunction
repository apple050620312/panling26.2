#检查玩家进度
execute if score @s process_yao_hide matches 2.. run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_yao_hide matches 2 run function pld:system/truth/yao/1/book
execute unless score @s process_yao_hide matches 1.. run function pld:system/truth/yao/1/check/check_pos

#回收书本
clear @s written_book[custom_data={id:"panling:book_yh1"}]

#重置激活记分板
scoreboard players set @s trigger_yao_hide 0