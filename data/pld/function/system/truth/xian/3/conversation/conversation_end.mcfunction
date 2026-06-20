#对话内容
tellraw @s {"translate":"pl.info.xian.hide.conversation3_end1"}
tellraw @s {"translate":"pl.info.xian.hide.conversation3_end2"}


#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book[custom_data={id:"panling:book_xh_all2"}]
#给予书本
function pld:system/truth/xian/3/book
#记分板更新
scoreboard players set @s process_xian_hide 6
