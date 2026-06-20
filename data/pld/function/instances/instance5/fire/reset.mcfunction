fill 3056 127 -1874 3136 127 -1801 minecraft:obsidian replace minecraft:lava
fill 3056 127 -1874 3136 127 -1801 minecraft:obsidian replace minecraft:air
fill 3056 128 -1874 3136 128 -1801 minecraft:prismarine replace minecraft:lava[level=0]
scoreboard players set @e[tag=instance5_skill] instance5_fire 0
#关闭bossbar展示
bossbar set pl:instance5_fire visible false

function pld:instances/instance5/fire/shut2
function pld:instances/instance5/fire/shut3
fill 3130 127 -1868 3134 127 -1871 minecraft:obsidian replace air
schedule clear pld:instances/instance5/fire/player_check
