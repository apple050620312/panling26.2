#剧情内容
#tellraw @a {text:"",extra:[{text:"妖族大長老蚩尤：",color:aqua},{text:"「就算真的有那一天，我們也會準備好一切迎戰的。也許會失敗，也許會成功，總是要試了才知道。」",color:white}]} 
tellraw @a {"translate":"pl.info.end_story.10"}

#对话延迟
scoreboard players set #system tick_end_story 50
#跳跃对话
scoreboard players add #system conversation_end_story 1