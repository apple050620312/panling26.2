#对话内容
tellraw @s {"translate":"pl.info.xian.hide.conversation5_end1"}


#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book[custom_data={id:"panling:book_xh_all4"}]
#给予书本
give @s minecraft:written_book[custom_data={id:"panling:book_xh_all5",title:"§9制作四圣兽的可能性？",author:"§9仙族专属任务",pages:['{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.xian_hide1_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.xian_hide2_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.xian_hide3_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.xian_hide4_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.xian_hide5_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}']}]
#记分板更新
scoreboard players set @s process_xian_hide 10
