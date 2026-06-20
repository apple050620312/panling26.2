#对话内容
tellraw @s {"translate":"pl.info.xian.hide.conversation1_end1"}
tellraw @s {"translate":"pl.info.xian.hide.conversation1_end2"}


#音效
function pld:system/truth/conversation_end_sound
#给予书本
function pld:system/truth/xian/1/book
#记分板更新
scoreboard players set @s process_xian_hide 2
