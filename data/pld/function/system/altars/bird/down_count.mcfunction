#scoreboard players set @s bird_tickxs 20
#异步
scoreboard players set @s bird_tickxs 5

scoreboard players operation @s zjl = @s birdtime
scoreboard players operation @s zjl /= @s bird_tickxs
scoreboard players operation @s bird_tickxs = @s zjl
title @s actionbar {"text":"","extra":[{"translate":"pl.info.bird.down_count1","color":"aqua","bold":true},{"text":"  "},{"score":{"name":"@s","objective":"bird_tickxs"},"color":"green","bold":true},{"translate":"pl.info.bird.down_count2","color":"aqua","bold":true}]}
