#对话内容
tellraw @s {"translate":"pl.info.zhan.hide.conversation2_end1"}
tellraw @s {"translate":"pl.info.zhan.hide.conversation2_end2"}


#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book[custom_data={id:"panling:book_zh_all1"}]
#给予书本
function pld:system/truth/zhan/2/book
#记分板更新
scoreboard players set @s process_zhan_hide 4
