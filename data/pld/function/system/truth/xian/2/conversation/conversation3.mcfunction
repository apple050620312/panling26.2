#对话内容
tellraw @s {"translate":"pl.info.xian.hide.conversation2_3"}
#音效
function pld:system/truth/conversation_sound
#对话延迟
scoreboard players set @s tick_xian_hide 8
#跳跃对话
scoreboard players add @s conversation_xian_hide 1

#清理道具-蓝图
clear @s nether_wart{id:"panling:xian_hide_item1"}