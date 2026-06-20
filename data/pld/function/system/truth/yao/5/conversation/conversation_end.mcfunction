#对话内容
tellraw @s {"translate":"pl.info.yao.hide.conversation5_15"}

#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book[custom_data={id:"panling:book_yh_all4"}]

#给予书本
give @s minecraft:written_book[custom_data={id:"panling:book_yh_all5",title:"§9丹药与妖族内丹的必然性？",author:"§9妖族专属任务",pages:['{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.yao_hide1_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.yao_hide2_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.yao_hide3_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.yao_hide4_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.yao_hide5_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}']}]

#记分板更新
scoreboard players set @s process_yao_hide 10