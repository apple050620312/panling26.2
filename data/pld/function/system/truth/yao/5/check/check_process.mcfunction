#检查玩家进度
execute unless score @s process_yao_hide matches ..9 run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_yao_hide matches 8..9 run function pld:system/truth/yao/5/check/check_pos
#execute if score @s process_yao_hide matches ..5 run function pld:system/truth/yao/4/chat

#回收书本
clear @s written_book[custom_data={id:"panling:book_yh5"}]

#重置激活记分板
scoreboard players set @s trigger_yao_hide 0