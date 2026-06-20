#声音效果
execute at @s[scores={zfsuccess=1}] run playsound minecraft:se_fire ambient @a[distance=..10]

#信息-进入冷却
title @s clear
title @s actionbar {"translate":"pl.info.zfcoolin_fire","color":"red","bold":true}

