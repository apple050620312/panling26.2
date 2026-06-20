scoreboard players enable @a begin
scoreboard players set #system totalload 747
#加载用bossbar 
bossbar add pl:load {"translate":"pl.bossbarname.loading"}
bossbar set pl:load max 747
bossbar set pl:load color yellow

tellraw @a {"text":"","extra":[{"text":"梦回盘灵数据包预加载完毕!"}]}
tellraw @a {"text":"","extra":[{"text":"点击下方"},{"text":"开始加载","color":"green","bold":true},{"text":"按钮开始加载修复地图。"}]}
tellraw @a {"text":""}
tellraw @a {"translate":"please.use.right.resourcepack","clickEvent":{"action":"run_command","value":"/trigger begin set 1"}}
tellraw @a {"text":""}
tellraw @a {"text":"","extra":[{"text":"看不见上方的"},{"text":"开始加载","color":"green","bold":true},{"text":"按钮？请检查地图专用资源包是否正确加载。"}]}
title @a times 10 200 20

