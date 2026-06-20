#对话内容
tellraw @s {"translate":"pl.info.shen.hide.conversation1_end1"}
tellraw @s {"translate":"pl.info.shen.hide.conversation1_end2"}


#音效
function pld:system/truth/conversation_end_sound
#给予书本
function pld:system/truth/shen/1/book
#记分板更新
scoreboard players set @s process_shen_hide 2
