tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate": "pl.info.instance1.begin"}
playsound entity.wither.ambient ambient @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] 2801 71 -414 10
bossbar set pl:instance1_boss visible false
bossbar set pl:instance1_stage visible true
#生成检查用盔甲架
execute as @e[type=armor_stand,tag=instance1] run kill @s
summon armor_stand 2821 81 -414 {Tags:["instance1"]}
#阶段一
schedule clear pld:instances/instance1/phase1
schedule function pld:instances/instance1/phase1 3s 