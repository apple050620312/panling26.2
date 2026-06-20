#15s
#时装头附灵特效
effect give @a[tag=honor_enchant7] absorption 15 1

#优化-清理落地捡不起来的三叉戟
execute as @e[type=trident,nbt={inGround:1b,pickup:0b}] run kill @s

schedule function pld:ticks/15s 15s