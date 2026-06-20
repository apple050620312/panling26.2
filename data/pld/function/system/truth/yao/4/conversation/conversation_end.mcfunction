#对话内容
tellraw @s {"translate":"pl.info.yao.hide.conversation4_8"}
tellraw @s {"translate":"pl.info.yao.hide.conversation4_9"}

#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book{id:"panling:book_yh_all3"}

#给予书本
function pld:system/truth/yao/4/book
#记分板更新
scoreboard players set @s process_yao_hide 8
