#对话内容
tellraw @s {"translate":"pl.info.shen.hide.conversation3_end1"}
tellraw @s {"translate":"pl.info.shen.hide.conversation3_end2"}


#音效
function pld:system/truth/conversation_end_sound
#清除书本
clear @s minecraft:written_book{id:"panling:book_sh_all2"}
#给予书本
function pld:system/truth/shen/3/book
#记分板更新
scoreboard players set @s process_shen_hide 6
