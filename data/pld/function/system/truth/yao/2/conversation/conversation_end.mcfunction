#对话内容
tellraw @s {"translate":"pl.info.yao.hide.conversation2_8"}
tellraw @s {"translate":"pl.info.yao.hide.conversation2_9"}

#音效
function pld:system/truth/conversation_end_sound

#清理书本
clear @s minecraft:written_book[custom_data={id:"panling:book_yh_all1"}]

#给予书本
function pld:system/truth/yao/2/book

#记分板更新
scoreboard players set @s process_yao_hide 4
