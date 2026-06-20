#对话内容
tellraw @s {"translate":"pl.info.zhan.hide.conversation4_end1"}


#音效
function pld:system/truth/conversation_end_sound
#清理书本
clear @s minecraft:written_book[custom_data={id:"panling:book_zh_all3"}]
#给予书本
give @s minecraft:written_book[custom_data={id:"panling:book_zh_all4",title:"§9神族四兽的恐怖",author:"§9战神族专属任务",pages:['{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.zhan_hide1_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.zhan_hide2_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.zhan_hide3_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.zhan_hide4_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}','{"extra":[{"translate":"pl.book.hide_title"},{"translate":"pl.book.zhan_hide5_finish"},{"translate":"pl.book.hide_talked"}],"text": ""}']}]
#记分板更新
scoreboard players set @s process_zhan_hide 8
