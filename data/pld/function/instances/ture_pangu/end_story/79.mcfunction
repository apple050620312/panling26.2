#剧情内容
#tellraw @a {text:"",extra:[{text:"若你們在盤古大陸中，曾對劇情場景或是角色人物有一點點的共鳴，我相信，這就是這張地圖存在的意義。",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.73"}
playsound pl.end_story.16 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 10
#跳跃对话
scoreboard players add #system conversation_end_story 1