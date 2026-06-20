execute if score #system instance2_weak2 matches 1 run kill @e[type=blaze,tag=core2,tag=pos1]
execute if score #system instance2_weak2 matches 2 run kill @e[type=blaze,tag=core2,tag=pos2]
execute if score #system instance2_weak2 matches 3 run kill @e[type=blaze,tag=core2,tag=pos3]
execute if score #system instance2_weak2 matches 4 run kill @e[type=blaze,tag=core2,tag=pos4]
execute if score #system instance2_body matches 0 run tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate":"pl.info.instance2.core_success"}
scoreboard players set #system instance2_body 1