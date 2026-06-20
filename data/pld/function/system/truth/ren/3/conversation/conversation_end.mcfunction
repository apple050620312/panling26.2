#对话内容
tellraw @s {"translate":"pl.info.ren.hide.conversation3_6"}
tellraw @s {"translate":"pl.info.ren.hide.conversation3_7"}

#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book{id:"panling:book_rh_all2"}
#给予书本
function pld:system/truth/ren/3/book
#记分板更新
scoreboard players set @s process_ren_hide 6