tellraw @a {"translate": "pl.info.updating"}
scoreboard players set #updating int 1

#加载用bossbar 
bossbar add pl:load {"translate":"pl.bossbarname.loading"}
bossbar set pl:load max 682
bossbar set pl:load color yellow
scoreboard players set #system alreadyload 0
scoreboard players set #system totalload 682

schedule function pld:beta/chunk/chunkbegin 1t
