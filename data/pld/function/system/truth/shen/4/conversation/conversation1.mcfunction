#对话内容
tellraw @s {"translate":"pl.info.shen.hide.conversation4_1"}
#音效
function pld:system/truth/conversation_sound
#对话延迟
scoreboard players set @s tick_shen_hide 8
#跳跃对话
scoreboard players add @s conversation_shen_hide 1
