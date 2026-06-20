tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.fire_break"}
scoreboard players add #system instance5_skillx 1
scoreboard players set @e[tag=instance5_skill] instance5_fire 0
#关闭bossbar展示
bossbar set pl:instance5_fire visible false

execute as @e[type=magma_cube,tag=fire] run function pld:system/tp_and_kill_self

fill 3056 127 -1874 3136 127 -1801 minecraft:obsidian replace minecraft:lava
fill 3056 127 -1874 3136 127 -1801 minecraft:obsidian replace minecraft:air
fill 3056 128 -1874 3136 128 -1801 minecraft:prismarine replace minecraft:lava[level=0]
schedule clear pld:instances/instance5/fire/shut2
schedule clear pld:instances/instance5/fire/shut3
schedule function pld:instances/instance5/fire/shut2 8t
schedule function pld:instances/instance5/fire/shut3 16t
schedule clear pld:instances/instance5/fire/player_check


