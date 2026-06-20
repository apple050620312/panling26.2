#对话内容
tellraw @s {"translate":"pl.info.ren.hide.conversation2_11"}
tellraw @s {"translate":"pl.info.ren.hide.conversation2_12"}

#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book{id:"panling:book_rh_all1"}
#给予书本
function pld:system/truth/ren/2/book
#记分板更新
scoreboard players set @s process_ren_hide 4
