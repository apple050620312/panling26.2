scoreboard players set @s instance3_tickxs 20
scoreboard players operation @s zjl = @s instance3_tick
scoreboard players operation @s zjl /= @s instance3_tickxs
scoreboard players operation @s instance3_tickxs = @s zjl
title @s actionbar {"text":"","extra":[{"translate":"pl.info.instance3.down_count1","color":"aqua","bold":true},{"text":"  "},{"score":{"name":"@s","objective":"instance3_tickxs"},"color":"green","bold":true},{"translate":"pl.info.instance3.down_count2","color":"aqua","bold":true}]}
