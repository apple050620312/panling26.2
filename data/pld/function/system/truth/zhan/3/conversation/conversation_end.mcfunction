#对话内容
tellraw @s {"translate":"pl.info.zhan.hide.conversation3_end1"}
tellraw @s {"translate":"pl.info.zhan.hide.conversation3_end2"}


#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book{id:"panling:book_zh_all2"}
#给予书本
function pld:system/truth/zhan/3/book
#记分板更新
scoreboard players set @s process_zhan_hide 6
