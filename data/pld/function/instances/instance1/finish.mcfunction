tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate": "pl.info.instance1.end"}
kill @e[type=cave_spider,nbt={CustomName:'{"translate":"pl.monster.instance1.cave_spider"}'}]
bossbar set pl:instance1_stage visible false
bossbar set pl:instance1_stage players
bossbar set pl:instance1_boss visible false
bossbar set pl:instance1_boss players
scoreboard players set #system instance1_stage -1
scoreboard players set #system instance1_failed 0
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] gold_chest 1
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] feather_mainland 1
execute as @e[type=armor_stand,tag=instance1] run kill @s
tag @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] add instance1_tpout1
schedule clear pld:instances/instance1/tpout1
schedule function pld:instances/instance1/tpout1 3s
