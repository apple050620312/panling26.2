#scoreboard players set @s test_firetickxs 20

#异步
scoreboard players set @s test_firetickxs 5
scoreboard players operation @s zjl = @s test_firetick
scoreboard players operation @s zjl /= @s test_firetickxs
scoreboard players operation @s test_firetickxs = @s zjl
title @s actionbar {"text":"","extra":[{"translate":"pl.info.test.down_count1","color":"aqua","bold":true},{"text":"  "},{"score":{"name":"@s","objective":"test_firetickxs"},"color":"green","bold":true},{"translate":"pl.info.test.down_count2","color":"aqua","bold":true}]}

