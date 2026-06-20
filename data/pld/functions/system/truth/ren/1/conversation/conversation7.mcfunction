#对话内容
tellraw @s {"translate":"pl.info.ren.hide.conversation1_7"}
#音效
function pld:system/truth/conversation_sound
#对话延迟
scoreboard players set @s tick_ren_hide 8
#跳跃对话
scoreboard players add @s conversation_ren_hide 1
