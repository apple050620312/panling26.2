execute if entity @e[type=zombie,x=-853,y=102,z=-142,dx=4,dy=5,dz=7] run tellraw @s {"translate":"pl.info.xe_out_fight1"}
execute unless entity @e[type=zombie,x=-853,y=102,z=-142,dx=4,dy=5,dz=7] run tellraw @s {"translate":"pl.info.xe_out_fight2"}
execute unless entity @e[type=zombie,x=-853,y=102,z=-142,dx=4,dy=5,dz=7] run give @s lead
execute unless entity @e[type=zombie,x=-853,y=102,z=-142,dx=4,dy=5,dz=7] run summon cow -853 91 -162 {DeathLootTable:"pld:empty",Tags:["panling","xe"],Invulnerable:1,CustomName:'{"translate":"pl.npc.name.xe5"}',CustomNameVisible:1}
execute unless entity @e[type=zombie,x=-853,y=102,z=-142,dx=4,dy=5,dz=7] run tag @s add tp_bridge
execute unless entity @e[type=zombie,x=-853,y=102,z=-142,dx=4,dy=5,dz=7] run schedule function pld:system/ex_xian/tp_bridge 2t