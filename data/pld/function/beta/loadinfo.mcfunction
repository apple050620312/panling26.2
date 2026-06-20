scoreboard players enable @a begin
scoreboard players set #system totalload 747
#加載用bossbar 
bossbar add pl:load {"translate":"pl.bossbarname.loading"}
bossbar set pl:load max 747
bossbar set pl:load color yellow

tellraw @a {"text":"","extra":[{"text":"夢迴盤靈資料包預加載完畢!"}]}
tellraw @a {"text":"","extra":[{"text":"點擊下方"},{"text":"[開始加載]","color":"green","bold":true},{"text":"按鈕開始加載修復地圖。"}]}
tellraw @a {"text":""}
tellraw @a ["",{"translate":"please.use.right.resourcepack","fallback":"[開始加載]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger begin set 1"}},{"text":" (如果沒看到圖示請點擊此段文字)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"/trigger begin set 1"}}]
tellraw @a {"text":""}
tellraw @a {"text":"","extra":[{"text":"看不見上方的"},{"text":"開始加載","color":"green","bold":true},{"text":"按鈕？請檢查地圖專用資源包是否正確加載。"}]}
title @a times 10 200 20
