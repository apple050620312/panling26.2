#对话内容
tellraw @s {"translate":"pl.info.yao.hide.conversation3_10"}
tellraw @s {"translate":"pl.info.yao.hide.conversation3_11"}


#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book[custom_data={id:"panling:book_yh_all2"}]

#给予书本
function pld:system/truth/yao/3/book

#记分板更新
scoreboard players set @s process_yao_hide 6
