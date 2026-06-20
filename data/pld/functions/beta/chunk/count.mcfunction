execute store result bossbar pl:load value run scoreboard players add #system alreadyload 1
bossbar set pl:load players @a 
bossbar set pl:load name {"text":"","extra":[{"translate":"pl.actionbar.loading"},{"score":{"name":"#system","objective":"alreadyload"},"color":"red"},{"text":"/"},{"score":{"name":"#system","objective":"totalload"},"color":"green"}]}
