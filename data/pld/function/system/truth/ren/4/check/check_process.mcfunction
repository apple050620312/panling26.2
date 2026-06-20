#检查玩家进度
execute unless score @s process_ren_hide matches ..7 run tellraw @s {"translate":"pl.info.conversation_has_read"}
execute if score @s process_ren_hide matches 6..7 run function pld:system/truth/ren/4/check/check_pos

#回收书本
clear @s written_book[custom_data={id:"panling:book_rh4"}]

#重置激活记分板
scoreboard players set @s trigger_ren_hide 0