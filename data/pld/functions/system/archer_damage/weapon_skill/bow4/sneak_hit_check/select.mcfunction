execute if entity @s[distance=..3.7] if entity @e[tag=monster,dx=0.1,dy=0.1,dz=0.1,nbt={HurtTime:10s}] run tag @e[tag=monster,dx=0.1,dy=0.1,dz=0.1,sort=nearest,nbt={HurtTime:10s}] add bow4_tag
execute if entity @s[distance=..3.7] unless entity @e[tag=monster,dx=0.1,dy=0.1,dz=0.1,nbt={HurtTime:10s}] positioned ^ ^ ^0.1 run function pld:system/warrior_attack/select
