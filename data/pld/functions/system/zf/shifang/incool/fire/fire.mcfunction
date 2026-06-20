#阵法冷却中
scoreboard players set @s zf_coolXS 20
scoreboard players operation @s zjl = @s zf_cool_fire
scoreboard players operation @s zjl /= @s zf_coolXS
scoreboard players operation @s zf_coolXS = @s zjl
title @s[scores={zf_coolXS=0..}] actionbar {"text":"","extra":[{"translate":"pl.info.zfcool1","color":"red","bold":true},{"text":"  "},{"translate":"pl.info.zfcool2","color":"red","bold":true},{"score":{"name":"@s","objective":"zf_coolXS"},"color":"red","bold":true},{"translate":"pl.info.zfcool3","color":"red","bold":true}]}
playsound minecraft:pl.zf.failing ambient @s[scores={zf_cool_fire=1..}] ~ ~ ~ 0.3
