#检查玩家进度
execute if score @s process_ren_hide matches 6.. run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_ren_hide matches 6 run function pld:system/truth/ren/3/book
execute if score @s process_ren_hide matches 4..5 run function pld:system/truth/ren/3/check/check_pos
execute unless score @s process_ren_hide matches 4.. run function pld:system/truth/ren/3/chat


#回收书本
clear @s written_book[custom_data={id:"panling:book_rh3"}]

#重置激活记分板
scoreboard players set @s trigger_ren_hide 0