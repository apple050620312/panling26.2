#检查玩家进度
execute if score @s process_shen_hide matches 2.. run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_shen_hide matches 2 run function pld:system/truth/shen/1/book
execute unless score @s process_shen_hide matches 1.. run function pld:system/truth/shen/1/check/check_pos

#回收书本
clear @s written_book{id:"panling:book_sh1"}

#重置激活记分板
scoreboard players set @s trigger_shen_hide 0