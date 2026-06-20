#剧情内容
#tellraw @a {text:"",extra:[{text:"\n由於參與世界最終之戰，所有玩家的所有種族友好度大幅度增加",color:gray}]}
tellraw @a {"translate":"pl.info.end_story.41"}
scoreboard players add @a racefriend0 20
scoreboard players add @a racefriend1 20
scoreboard players add @a racefriend2 20
scoreboard players add @a racefriend3 20
scoreboard players add @a racefriend4 20
function pld:instances/ture_pangu/end_story/sound/sound_level_up1

#对话延迟
scoreboard players set #system tick_end_story 15
#跳跃对话
scoreboard players add #system conversation_end_story 1