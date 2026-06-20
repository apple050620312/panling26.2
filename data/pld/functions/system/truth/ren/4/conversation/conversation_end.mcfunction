#对话内容
tellraw @s {"translate":"pl.info.ren.hide.conversation4_20"}


#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book{id:"panling:book_rh_all3"}
#给予书本
give @s minecraft:written_book{id:"panling:book_rh_all4",title:"§9始终不曾出现的神",author:"§9人族专属任务",pages:['{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.ren_hide1_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.ren_hide2_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.ren_hide3_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.ren_hide4_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}']}

#记分板更新
scoreboard players set @s process_ren_hide 8
