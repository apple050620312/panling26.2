#scoreboard players set @s test_bodytickxs 20

#异步
scoreboard players set @s test_bodytickxs 5
scoreboard players operation @s zjl = @s test_bodytick
scoreboard players operation @s zjl /= @s test_bodytickxs
scoreboard players operation @s test_bodytickxs = @s zjl
title @s actionbar {"text":"","extra":[{"translate":"pl.info.test.down_count1","color":"aqua","bold":true},{"text":"  "},{"score":{"name":"@s","objective":"test_bodytickxs"},"color":"green","bold":true},{"translate":"pl.info.test.down_count2","color":"aqua","bold":true}]}

