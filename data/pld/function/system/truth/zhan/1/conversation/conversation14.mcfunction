#对话内容
tellraw @s {"translate":"pl.info.zhan.hide.conversation1_14"}
#音效
function pld:system/truth/conversation_sound
#对话延迟
scoreboard players set @s tick_zhan_hide 8
#跳跃对话
scoreboard players add @s conversation_zhan_hide 1
